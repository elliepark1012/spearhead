import BrandCard from './BrandCard'

function BrandContainer({brands}){

    return (
        <div>
            {brands.map(brand => <BrandCard key={brand.id} brand={brand} />)}
        </div>
    )
}

export default BrandContainer