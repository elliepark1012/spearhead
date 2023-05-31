import {Link} from 'react-router-dom'

function BrandCard({brand}) {
    const {name, about, website} = brand
    return (
        <div>
            <Link to={`/brands/{$id}`}><h2>{name}</h2></Link>
            <p>{about}</p>
            <p>{website}</p>
        </div>
    )
}

export default BrandCard