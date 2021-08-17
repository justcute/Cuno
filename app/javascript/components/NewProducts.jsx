import React, { useState, useEffect } from "react";
import NonEditableProduct from "./NonEditableNewProduct";

const NewProducts = () => {
  const [products, setProducts] = useState([]);

  function getProducts(products) {
    fetch("/api/new_products?amount=9")
      .then((response) => {
        return response.json();
      })
      .then((res) => {
        setProducts(res);
      });
      useEffect(() => {
      }, []);
  }



  getProducts();
  return (
    <div>
      <div className="row">
        {products.map((product, i) => (
          <NonEditableProduct product={product} key={i} />
        ))}
      </div>
      <div className="row">
        <button type="button" className="btn btn-dark center-block">
          Show more
        </button>
      </div>
    </div>
  );
};



export default NewProducts;

