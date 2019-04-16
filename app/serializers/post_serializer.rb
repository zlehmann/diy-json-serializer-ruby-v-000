class ProductSerializer
  def self.serialize(post)

    # start with the open brace to create a valid JSON object
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"title": "' + product.title + '", '
    serialized_product += '"description": "' + product.description + '", '

    # the author association can also be represented in JSON
    serialized_product += '"author": {'
    serialized_product += '"name": "' + product.author.name + '"}'

    # and end with the close brace
    serialized_product += '}'
  end
end
