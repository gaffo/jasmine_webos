/**
 * This file contains matchers that are for all tests
 */
/**
 * Matcher that expects to be undefined
 */
jasmine.Matchers.prototype.toBeUndefined = function() {
  return this.report((this.actual === undefined),
    'Expected a value to be undefined but it was defined (' + this.report + ').');
};
/** @deprecated */
jasmine.Matchers.prototype.should_be_defined = jasmine.Matchers.prototype.toBeDefined;