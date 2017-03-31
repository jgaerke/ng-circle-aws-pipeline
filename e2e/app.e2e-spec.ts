import { NgCircleAwsPipelinePage } from './app.po';

describe('ng-circle-aws-pipeline App', () => {
  let page: NgCircleAwsPipelinePage;

  beforeEach(() => {
    page = new NgCircleAwsPipelinePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
