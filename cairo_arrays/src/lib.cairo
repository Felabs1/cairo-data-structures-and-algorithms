use core::debug::PrintTrait;
use core::option::OptionTrait;
use array::ArrayTrait;
#[derive(Drop)]
struct ArrayDataStructure {
    data: Array<u32>,
    len: u32
}

trait ArrayDataStructureTrait {
    fn new(ref self: ArrayDataStructure);
    fn add_element(ref self: ArrayDataStructure, element: u32);
    fn view_element(self: @ArrayDataStructure, index: u32)->u32;
    // fn search(self: @ArrayDataStructure, index: u32) -> u32;
    // fn update_element(ref self: ArrayDataStructure, index: u32, new_value: u32);
    // fn length(self: @ArrayDataStructure, index: u32, new_value: u32) -> usize;
    // fn traverse(self: @ArrayDataStructure);
    // fn delete_element(ref self: ArrayDataStructure, value: u32);
}

impl ArrayDataStructureImpl of ArrayDataStructureTrait {
    fn new(ref self: ArrayDataStructure){
        self.data = ArrayTrait::new();
    }

    // adds element at the begining of the array
    fn add_element(ref self: ArrayDataStructure, element: u32){
        self.data.append(element);
    }

    // views an element at a certain index
    fn view_element(self: @ArrayDataStructure, index: u32) -> u32{
        let element = *self.data.at(index);
        element
    }
}