import React from 'react';
import PropTypes from 'prop-types';
import NonEditableProduct from './NonEditableProduct'

const ProductList = ({ products }) => (
  <div className="columns">
    {
      products.map( product =>
        <NonEditableProduct
          product={product}
        />
      )
    }
  </div>
)

ProductList.propTypes = {
  products: PropTypes.arrayOf(PropTypes.object).isRequired
};

export default ProductList;