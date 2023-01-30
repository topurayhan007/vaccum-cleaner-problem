(define (problem VACUUM_CLEANER-2-0)
    (:domain VACUUM_CLEANER)
    (:objects left right)
    (:init
        (DIRTIN left)
        (DIRTIN right)
        (ROBOTIN left)
    )
    
    (:goal
        (AND
            (CLEAN left)
            (CLEAN right)
        )
    )
)
