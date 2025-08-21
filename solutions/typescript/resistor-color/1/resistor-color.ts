type Result = number | string[] | null

  const colorList: string[] = ['black', 'brown','red','orange', 'yellow','green','blue','violet','grey','white']


export const colorCode = (color?: string): Result => {
  let result: Result = null
  if (color) {
    result = colorList.indexOf(color)
  } else {
    result = colorList
  }
  return result
}

export const COLORS = colorList
