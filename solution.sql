Select owner.owner_id, owner_name, count(category_article_mapping.category_id)
from owner
left join (
    article left join (category_article_mapping
    ) on category_article_mapping.article_id = article.article_id
)on owner.owner_id = article.owner_id
group by owner.owner_id
