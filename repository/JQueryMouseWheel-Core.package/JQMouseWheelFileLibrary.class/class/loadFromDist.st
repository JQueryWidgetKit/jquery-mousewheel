load from dist
loadFromDist
  "self loadFromDist"

  (self allSelectors
    select: [ :selector | 
      #(#'uploaded' #'uploaded metadata')
        includes: (self categoryOfSelector: selector) ])
    do: [ :selector | self removeSelector: selector ].
  self removeEmptyCategories.
  self
    recursivelyAddAllFilesIn: '/opt/git/JQueryWidgetKit/jquery-mousewheel/dist'