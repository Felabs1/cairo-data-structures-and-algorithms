use core::box::BoxTrait;
use core::debug::PrintTrait;
use core::option::OptionTrait;
use array::ArrayTrait;

struct ArrayDataStructure {
    data: Array<u32>,
    len: u32
}

trait ArrayDataStructureTrait {
    fn new(ref self: ArrayDataStructure)->Array<u32>;
    fn add_element(ref self: ArrayDataStructure, element: u32);
    fn view_element(self: @ArrayDataStructure, index: u32)->u32;
    fn update_element(ref self: ArrayDataStructure, index: u32, new_value: u32);
    fn length(self: @ArrayDataStructure, index: u32, new_value: u32) -> usize;
    fn traverse(self: @ArrayDataStructure);
    fn delete_element(ref self: ArrayDataStructure, value: u32);
}

impl ArrayDataStructureImpl of ArrayDataStructureTrait {
    fn new(ref self: ArrayDataStructure)->Array<u32>{
        self.data = ArrayTrait::new();
        self.data
    }
}