export function downloadBlob(url: string, fileName: string = "triva.png"): void {
	const link: HTMLAnchorElement = document.createElement("a");
	link.href = url;
	link.download = fileName;

	link.click();
}