export interface IConfigServiceBasics {
    homo: true;
    cacheTokensPath: './tokens_cache.json';
    tokensExpireInHours: 24;
    privateKeyContents?: string;
    privateKeyPath?: '../private/claveprivada.pem';
    certPath?: '../private/certificado.pem';
    certContents?: string;
}

export type RequireOnlyOne<T, Keys extends keyof T = keyof T> = Pick<
    T,
    Exclude<keyof T, Keys>
> &
    {
        [K in Keys]-?: Required<Pick<T, K>> &
            Partial<Record<Exclude<Keys, K>, undefined>>;
    }[Keys];

export type IConfigService = RequireOnlyOne<
    IConfigServiceBasics,
    'privateKeyContents' | 'privateKeyPath'
> &
    RequireOnlyOne<IConfigServiceBasics, 'certPath' | 'certContents'>;
