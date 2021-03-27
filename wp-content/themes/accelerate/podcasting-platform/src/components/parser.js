export const parser = new DOMParser();
export const xmlParse = (text) => parser.parseFromString(text, 'text/xml');
export const htmlParse = (text) => parser.parseFromString(text, 'text/html');
