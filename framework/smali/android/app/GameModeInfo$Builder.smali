.class public final Landroid/app/GameModeInfo$Builder;
.super Ljava/lang/Object;
.source "GameModeInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/GameModeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActiveGameMode:I

.field private mAvailableGameModes:[I

.field private mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/GameModeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDownscalingAllowed:Z

.field private mIsFpsOverrideAllowed:Z

.field private mOverriddenGameModes:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/GameModeInfo$Builder;->mAvailableGameModes:[I

    .line 148
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/GameModeInfo$Builder;->mOverriddenGameModes:[I

    .line 152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/GameModeInfo$Builder;->mConfigMap:Ljava/util/Map;

    .line 77
    return-void
.end method


# virtual methods
.method public build()Landroid/app/GameModeInfo;
    .registers 10

    .line 143
    new-instance v8, Landroid/app/GameModeInfo;

    iget v1, p0, Landroid/app/GameModeInfo$Builder;->mActiveGameMode:I

    iget-object v2, p0, Landroid/app/GameModeInfo$Builder;->mAvailableGameModes:[I

    iget-object v3, p0, Landroid/app/GameModeInfo$Builder;->mOverriddenGameModes:[I

    iget-boolean v4, p0, Landroid/app/GameModeInfo$Builder;->mIsDownscalingAllowed:Z

    iget-boolean v5, p0, Landroid/app/GameModeInfo$Builder;->mIsFpsOverrideAllowed:Z

    iget-object v6, p0, Landroid/app/GameModeInfo$Builder;->mConfigMap:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/GameModeInfo;-><init>(I[I[IZZLjava/util/Map;Landroid/app/GameModeInfo-IA;)V

    return-object v8
.end method

.method public setActiveGameMode(I)Landroid/app/GameModeInfo$Builder;
    .registers 2
    .param p1, "activeGameMode"    # I

    .line 105
    iput p1, p0, Landroid/app/GameModeInfo$Builder;->mActiveGameMode:I

    .line 106
    return-object p0
.end method

.method public setAvailableGameModes([I)Landroid/app/GameModeInfo$Builder;
    .registers 2
    .param p1, "availableGameModes"    # [I

    .line 85
    iput-object p1, p0, Landroid/app/GameModeInfo$Builder;->mAvailableGameModes:[I

    .line 86
    return-object p0
.end method

.method public setDownscalingAllowed(Z)Landroid/app/GameModeInfo$Builder;
    .registers 2
    .param p1, "allowed"    # Z

    .line 114
    iput-boolean p1, p0, Landroid/app/GameModeInfo$Builder;->mIsDownscalingAllowed:Z

    .line 115
    return-object p0
.end method

.method public setFpsOverrideAllowed(Z)Landroid/app/GameModeInfo$Builder;
    .registers 2
    .param p1, "allowed"    # Z

    .line 123
    iput-boolean p1, p0, Landroid/app/GameModeInfo$Builder;->mIsFpsOverrideAllowed:Z

    .line 124
    return-object p0
.end method

.method public setGameModeConfiguration(ILandroid/app/GameModeConfiguration;)Landroid/app/GameModeInfo$Builder;
    .registers 5
    .param p1, "gameMode"    # I
    .param p2, "gameModeConfiguration"    # Landroid/app/GameModeConfiguration;

    .line 134
    iget-object v0, p0, Landroid/app/GameModeInfo$Builder;->mConfigMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object p0
.end method

.method public setOverriddenGameModes([I)Landroid/app/GameModeInfo$Builder;
    .registers 2
    .param p1, "overriddenGameModes"    # [I

    .line 95
    iput-object p1, p0, Landroid/app/GameModeInfo$Builder;->mOverriddenGameModes:[I

    .line 96
    return-object p0
.end method
