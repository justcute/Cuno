import React from "react";
import propTypes from "prop-types";

const NonEditableNewProduct = ({ product }) => {
  const imagePlug =
    "https://i.pinimg.com/474x/ea/02/ac/ea02ac48c7d4f69a0f824d6b9461cf0c.jpg";
  if (product.image == null) {
    product.image = imagePlug;
  }
  let productLink = "/" + product.type + "/" + product.id;

  return (
    <React.Fragment>
      <div className="col-md-4">
        <a href={productLink} className="btn btn-secondary">
          <img src={product.image} alt="Product image" className="w-100" />
          <div className="card-body">
            <p className="card-text">{product.title}</p>
            <p>{product.description}</p>
            <div className="text-muted">
              <p>
                <time>{product.updated_at}</time>
              </p>
            </div>
          </div>
        </a>
      </div>
    </React.Fragment>
  );
};

NonEditableNewProduct.propTypes = {
  product: propTypes.shape({
    id: propTypes.integer,
    description: propTypes.string,
    image: propTypes.string,
    duration: propTypes.integer,
    title: propTypes.string,
    updated_at: propTypes.string,
    type: propTypes.string,
  }).isRequired,
};

export default NonEditableNewProduct;
