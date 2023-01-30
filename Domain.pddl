(define (domain VACUUM_CLEANER)
    (:requirements :strips)
    (:predicates (clean ?left)
                (dirtIn ?left)
                (robotIn ?left)
    )
                
    (:action move
        :parameters (?left ?right)
        :precondition (robotIn ?left)
        :effect (and
            (robotIn ?right)
            (not (robotIn ?left))
        )
    )
    
    (:action suck
        :parameters (?left )
        :precondition (and (dirtIn ?left)
                           (robotIn ?left)
        )
        :effect (and
            (clean ?left)
            (robotIn ?left)
            (not (dirtIn ?left))
        )
    )
)
