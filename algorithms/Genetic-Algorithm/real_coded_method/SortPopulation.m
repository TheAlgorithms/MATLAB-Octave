function pop =SortPopulation(pop)
    [~,so] = sort([pop.Cost]);
        pop = pop(so);
end