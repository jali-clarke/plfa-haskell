module Relation.Binary.PropositionalEquality (
    type (:=:)(..)
) where

data a :=: b where
    Refl :: a -> a -> a :=: a
