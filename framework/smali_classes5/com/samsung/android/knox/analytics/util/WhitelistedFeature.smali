.class public Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;
.super Ljava/lang/Object;
.source "WhitelistedFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    }
.end annotation


# instance fields
.field private mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

.field private mFeature:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "enableType"    # Ljava/lang/Integer;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mFeature:Ljava/lang/String;

    .line 18
    invoke-static {p2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->fromEnableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    .line 19
    return-void
.end method

.method private static fromEnableType(Ljava/lang/Integer;)Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .registers 2
    .param p0, "enableType"    # Ljava/lang/Integer;

    .line 22
    if-nez p0, :cond_5

    .line 23
    sget-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0

    .line 25
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 31
    :pswitch_c
    const/4 v0, 0x0

    return-object v0

    .line 29
    :pswitch_e
    sget-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->GET:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0

    .line 27
    :pswitch_11
    sget-object v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public getEnableApi()Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mEnableApi:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    return-object v0
.end method

.method public hasFeatureName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
