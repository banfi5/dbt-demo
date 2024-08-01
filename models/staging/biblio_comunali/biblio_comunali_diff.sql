select
    biblioteca,
    (iscritti_ragazzi_2021 - iscritti_ragazzi_2019) as iscritti_ragazzi_2021_2019_diff
from {{ ref("biblio_comunali") }}
where (iscritti_ragazzi_2021 - iscritti_ragazzi_2019) > 0
