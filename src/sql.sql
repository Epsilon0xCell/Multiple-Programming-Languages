/* -------------------------------------------------------
# --- L O N G E V I T Y  C A L C U L A T I O N -----------
# --------------------------------------------------------
# Searches the repo for all activity by a contributor, and
# calculates the days between their first & last contribution.
# This excludes those that step in 'one-time' such as starring 
# or forking or leaving a comment and never returning.
# This excludes devs that work on other projects, i.e. 
# activity is only traced from a single repo
#---------------------------------------
# view multiple author's days active
#---------------------------------------
*/
-- I hardcode the repo name in the WHERE below, so this file only
-- answers the question for bitcoin/bitcoin until I edit that one
-- string. Nothing here takes the repo as an input.
WITH dateDiff('day', toDateTime(earliest_seen), toDateTime(last_seen)) AS days_active
SELECT
    days_active,
    actor_login,
    last_seen
FROM
(
    SELECT
        MIN(created_at) AS earliest_seen,
        MAX(created_at) AS last_seen,
        days_active,
        actor_login
    FROM github_events
    WHERE repo_name = 'bitcoin/bitcoin'
    GROUP BY actor_login
    ORDER BY days_active DESC
)
-- I filter after grouping, and this line does the excluding my
-- header describes: a contributor whose first and last events land
-- on the same day gets a span of zero and drops out here.
WHERE days_active > 0
-- I sort before I limit on purpose. If I limited first, I would get
-- any hundred contributors instead of the hundred longest spans.
LIMIT 100
