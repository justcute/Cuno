import React from 'react';
import ProductList from './ProductList';

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      products: []
    }
  }
  
  getProducts () {    
    fetch('/api/products/index')
    .then((response) => {
      return response.json();
    })
    .then((res) => {
      // console.log(res); you should get the response you mentioned
      this.setState({products: res});
    });
  }

  componentDidMount () {
    this.getProducts()
  }

  render() {
    const { products } = this.state;

    return (
      <section className="section">
        <div className="container">
          <ProductList products={Object.values(products)} />
        </div>
      </section>
    );
  }
}

export default App