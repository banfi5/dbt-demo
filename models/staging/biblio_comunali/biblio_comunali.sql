select biblioteca_2019 as biblioteca,
iscritti_ragazzi_2021,
iscritti_ragazzi_2019 from (
(select
    biblioteca biblioteca_2021,
    iscritti___ragazzi____14_anni iscritti_ragazzi_2021

from {{ source('biblio_comunali_2021_source', 'biblio_comunali_2021') }})

inner join 

(select
    biblioteche biblioteca_2019,
    iscritti___ragazzi____14_anni iscritti_ragazzi_2019

from {{ source('biblio_comunali_2019_source', 'biblio_comunali_2019') }})

on biblioteca_2019 = biblioteca_2021
)