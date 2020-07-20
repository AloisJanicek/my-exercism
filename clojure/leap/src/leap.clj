(ns leap)

(defn leap-year? [year]
  (let [divisible-by (fn [num]
                       (= 0 (mod year num)))] 
    (and (divisible-by 4)
         (or (not (divisible-by 100))
             (divisible-by 400)))))
