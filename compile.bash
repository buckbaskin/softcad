for x in *.scad;
do
    echo "start compiling $x to ${x%.scad}.stl";
    openscad -o "${x%.scad}.stl" "$x";
    echo "done compiling $x to ${x%.scad}.stl";
done