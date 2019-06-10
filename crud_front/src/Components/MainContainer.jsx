import React from 'react'
import axios from 'axios'

class MainContainer extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      products: []
    }
  }

  componentDidMount() {
    axios.get('http://localhost:3001/products').then(res => {
      console.log(res)
      this.setState({products: res.data})
    }).catch(data => {
      console.log(data)
    })
  }

  render() {
    return (
      <div className='app-main'></div>
    )
  }
}

export default MainContainer