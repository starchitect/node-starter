import semver from 'semver';

const version = process.env.npm_package_engines_node;

if (!semver.satisfies(process.version, version)) {
	console.error(`Required node version ${version} not satisfied with current version ${process.version}.`);
	process.exit(1);
}
