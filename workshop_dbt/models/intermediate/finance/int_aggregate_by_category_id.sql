WITH int_agreggate_by_category_id AS (
    SELECT
        id,
        count(*)
    FROM
        {{ ref('stg_crm__nova_tabela') }}
    GROUP BY
        id
)

SELECT * FROM int_agreggate_by_category_id
