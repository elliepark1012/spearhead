import { Route, Switch } from 'react-router-dom'
import { useEffect, useState } from 'react';
import './App.css';

function App() {
  const [brands, setBrands] = useState([])
  const [errors, setErrors] = useState(false)

  useEffect(() => {
    fetch('/brands')
    .then(res => {
      if(res.ok){
        res.json().then(setBrands)
      } else {
        res.json().then(data => setErrors(data.error))
      }
    })
  },[])

  const addBrand = (brand) => setBrands(current => [...current, brand])

  const updateBrand = (updatedBrand) => setBrands(current => {
    return current.map(brand => {
      if(brand.id === updatedBrand.id) {
        return updatedBrand 
      } else {
        return brand
      }
    })
  })

  const deleteBrand = (id) => setBrands(current => current.filter(p => p.id !== id))

  if(errors) return <h1>{errors}</h1>
  return (
    <div className="App">
      <Switch>
        <Route path='/brands/new'>

        </Route>
        <Route path='/brands/:id/edit'>
          
        </Route>
        <Route path='brands/:id'>

        </Route>
        <Route path='users/:id'>

        </Route>
        <Route exact path='/'>
          <Home brands={brands} />
        </Route>
        <Route>
          <NotFound />
        </Route>
      </Switch>
    </div>
  );
}

export default App;
