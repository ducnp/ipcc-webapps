package vn.vnpt.ssdc.utility;

import org.springframework.data.jpa.domain.Specification;
import vn.vnpt.ssdc.voiceMail.entity.VoiceMail;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

public class EntitySpecification<T>implements Specification<T> {
    private SearchCriteria criteria;

    public EntitySpecification(final SearchCriteria criteria) {
        this.criteria = criteria;
    }

    public SearchCriteria getCriteria() {
        return criteria;
    }

    @Override
    public Predicate toPredicate
            (Root<T> root, CriteriaQuery<?> query, CriteriaBuilder builder) {
        if (criteria.getOperation().equalsIgnoreCase(">")) {
//            System.out.println("==========>===========");
            return builder.greaterThanOrEqualTo(
                    root.<String> get(criteria.getKey()), criteria.getValue().toString());
        }
        else if (criteria.getOperation().equalsIgnoreCase("<")) {
//            System.out.println("==========<===========");
            return builder.lessThanOrEqualTo(
                    root.<String> get(criteria.getKey()), criteria.getValue().toString());
        }
        else if (criteria.getOperation().equalsIgnoreCase(":")) {
            if (root.get(criteria.getKey()).getJavaType() == String.class) {
                return builder.like(
                        root.<String>get(criteria.getKey()), "%" + criteria.getValue() + "%");
            } else {
                return builder.equal(root.get(criteria.getKey()), criteria.getValue());
            }

        }else if (criteria.getOperation().equalsIgnoreCase("isNull")) {
            return builder.isNull(root.get(criteria.getKey()));
        }
        else if (criteria.getOperation().equalsIgnoreCase("in")) {
            return root.get(criteria.getKey()).in(criteria.getValue());
        }
        else if (criteria.getOperation().equalsIgnoreCase("or")) {
            List<Predicate> predicates = new ArrayList<>();
            List<String> params = (List<String>) criteria.getValue();
            if(params.size() == 2) {
            predicates.add(builder.or(
                builder.like(root.get(criteria.getKey()), "%" + params.get(0) + "%"),
                builder.like(root.get(criteria.getKey()), "%" + params.get(1) + "%")));
            }
            if(params.size() == 3) {
                predicates.add(builder.or(
                    builder.like(root.get(criteria.getKey()), "%" + params.get(0) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(1) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(2) + "%")));
            }
            if(params.size() == 4) {
                predicates.add(builder.or(
                    builder.like(root.get(criteria.getKey()), "%" + params.get(0) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(1) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(2) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(3) + "%")));
            }
            if(params.size() == 5) {
                predicates.add(builder.or(
                    builder.like(root.get(criteria.getKey()), "%" + params.get(0) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(1) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(2) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(3) + "%"),
                    builder.like(root.get(criteria.getKey()), "%" + params.get(4) + "%")));
            }

//            for(String param : params) {
//                builder.or(builder.like(root.get(criteria.getKey()), "%" + param + "%"));
//            }
            return builder.and(predicates.toArray(new Predicate[predicates.size()]));
        }

        return null;
    }
}
