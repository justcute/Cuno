import React from "react";
import propTypes from "prop-types";

const NonEditableCarouselProduct = ({ product, productKey }) => {
  const imagePlug = "https://hitsk.in/t/19/91/19/i_logo.gif";
  if (product.image == null) {
    product.image = imagePlug;
  }
  let className = "carousel-item";
  if (productKey == 1) {
    className += " active";
  }
  let productLink = "/" + product.type + "/" + product.id;

  return (
    <React.Fragment>
      <div className={className}>
        <a href={productLink}>
          <img src={product.image} alt="Product image" className="w-100" />
          <div className="carousel-caption">
            <p>{product.title}</p>
            <time>{product.updated_at}</time>
          </div>
        </a>
      </div>
    </React.Fragment>
  );
};

NonEditableCarouselProduct.propTypes = {
  product: propTypes.shape({
    id: propTypes.integer,
    description: propTypes.string,
    image: propTypes.string,
    title: propTypes.string,
    updated_at: propTypes.string,
    type: propTypes.string,
  }).isRequired,
};

export default NonEditableCarouselProduct;
