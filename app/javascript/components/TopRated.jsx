import React from "react";
import NonEditableProduct from "./NonEditableCarouselProduct";

class TopRated extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      products: [],
    };
  }

  getProducts() {
    fetch("/api/products_top")
      .then((response) => {
        return response.json();
      })
      .then((res) => {
        // console.log(res); you should get the response you mentioned
        this.setState({ products: res });
      });
  }

  componentDidMount() {
    this.getProducts();
  }

  render() {
    return (
      <div
        id="carouselControls"
        className="carousel slide"
        data-bs-ride="carousel"
      >
        <div className="carousel-inner">
          {this.state.products.map((product, i) => (
            <NonEditableProduct product={product} productKey={i} key={i} />
          ))}
          <button
            className="carousel-control-prev"
            type="button"
            data-bs-target="#carouselControls"
            data-bs-slide="prev"
          >
            <span
              className="carousel-control-prev-icon"
              aria-hidden="true"
            ></span>
            <span className="visually-hidden">Previous</span>
          </button>
          <button
            className="carousel-control-next"
            type="button"
            data-bs-target="#carouselControls"
            data-bs-slide="next"
          >
            <span
              className="carousel-control-next-icon"
              aria-hidden="true"
            ></span>
            <span className="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    );
  }
}

export default TopRated;
