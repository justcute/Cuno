import React from 'react';
import PropTypes from 'prop-types';

const NonEditableProduct = ({ product }) => {
  
  if(product.image == null){
    product.image = "https://bulma.io/images/placeholders/1280x960.png";
  }
  
  return(
    <React.Fragment>
      <div>
        <img src={product.image} alt="Product image" class="rounded w-25"/>
      </div>
      <div>
        <p>{product.title}</p>
        <div>
          <p>{product.description}</p>
          <time>{product.updated_at.toLocaleString()}</time>
        </div>
      </div>
    </React.Fragment>
  )
}

NonEditableProduct.PropTypes = {
  product: PropTypes.shape({
    id: PropTypes.integer,
    description: PropTypes.string,
    image: PropTypes.shape({url: PropTypes.image}),
    title: PropTypes.string,
    updated_at: PropTypes.string
  }).isRequired
};

export default NonEditableProduct;