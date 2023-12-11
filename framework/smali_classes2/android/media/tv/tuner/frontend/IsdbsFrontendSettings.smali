.class public Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;
.super Landroid/media/tv/tuner/frontend/FrontendSettings;
.source "IsdbsFrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;,
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Rolloff;,
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$CodeRate;,
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Modulation;,
        Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$StreamIdType;
    }
.end annotation


# static fields
.field public static final CODERATE_1_2:I = 0x2

.field public static final CODERATE_2_3:I = 0x4

.field public static final CODERATE_3_4:I = 0x8

.field public static final CODERATE_5_6:I = 0x10

.field public static final CODERATE_7_8:I = 0x20

.field public static final CODERATE_AUTO:I = 0x1

.field public static final CODERATE_UNDEFINED:I = 0x0

.field public static final MODULATION_AUTO:I = 0x1

.field public static final MODULATION_MOD_BPSK:I = 0x2

.field public static final MODULATION_MOD_QPSK:I = 0x4

.field public static final MODULATION_MOD_TC8PSK:I = 0x8

.field public static final MODULATION_UNDEFINED:I = 0x0

.field public static final ROLLOFF_0_35:I = 0x1

.field public static final ROLLOFF_UNDEFINED:I = 0x0

.field public static final STREAM_ID_TYPE_ID:I = 0x0

.field public static final STREAM_ID_TYPE_RELATIVE_NUMBER:I = 0x1


# instance fields
.field private final mCodeRate:I

.field private final mModulation:I

.field private final mRolloff:I

.field private final mStreamId:I

.field private final mStreamIdType:I

.field private final mSymbolRate:I


# direct methods
.method private constructor <init>(JIIIIII)V
    .registers 9
    .param p1, "frequency"    # J
    .param p3, "streamId"    # I
    .param p4, "streamIdType"    # I
    .param p5, "modulation"    # I
    .param p6, "codeRate"    # I
    .param p7, "symbolRate"    # I
    .param p8, "rolloff"    # I

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/frontend/FrontendSettings;-><init>(J)V

    .line 147
    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mStreamId:I

    .line 148
    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mStreamIdType:I

    .line 149
    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mModulation:I

    .line 150
    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mCodeRate:I

    .line 151
    iput p7, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mSymbolRate:I

    .line 152
    iput p8, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mRolloff:I

    .line 153
    return-void
.end method

.method synthetic constructor <init>(JIIIIIILandroid/media/tv/tuner/frontend/IsdbsFrontendSettings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;-><init>(JIIIIII)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2

    .line 201
    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;-><init>(Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getCodeRate()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mCodeRate:I

    return v0
.end method

.method public getModulation()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mModulation:I

    return v0
.end method

.method public getRolloff()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mRolloff:I

    return v0
.end method

.method public getStreamId()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mStreamId:I

    return v0
.end method

.method public getStreamIdType()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mStreamIdType:I

    return v0
.end method

.method public getSymbolRate()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;->mSymbolRate:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 317
    const/4 v0, 0x7

    return v0
.end method
