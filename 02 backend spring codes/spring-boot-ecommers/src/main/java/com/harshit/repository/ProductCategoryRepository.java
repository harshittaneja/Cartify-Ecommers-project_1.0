package com.harshit.repository;

import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.harshit.enity.ProductCategory;

//                                 this name for json entry          actual reference

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel="productCategory",path="product-category")
public interface ProductCategoryRepository extends JpaRepositoryImplementation<ProductCategory,Long> {

}
