export function decodedValue(colors: string[]): number {
  const COLORS: string[] = ['black','brown','red','orange','yellow','green','blue','violet','grey','white']

  const indexA = String(COLORS.indexOf(colors[0]))
  const indexB = String(COLORS.indexOf(colors[1]))

  return Number(indexA + indexB)
}
