.class public final enum Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
.super Ljava/lang/Enum;
.source "NalUnitParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/util/NalUnitParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HEVCNalUnitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum AUD_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum BLA_W_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum CRA_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum FILTER_DATA:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum IDR_N_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum IDR_W_RADL:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum PREFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum RASL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum SPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum SUFFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum TRAIL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

.field public static final enum VPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;


# instance fields
.field private final typeValue:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    .registers 14

    .line 76
    sget-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->TRAIL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->RASL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->BLA_W_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v3, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->IDR_W_RADL:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v4, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->IDR_N_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v5, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->CRA_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v6, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->VPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v7, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->SPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v8, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v9, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->AUD_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v10, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->FILTER_DATA:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v11, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PREFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v12, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->SUFFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    sget-object v13, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    filled-new-array/range {v0 .. v13}, [Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 77
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v1, "TRAIL_R"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->TRAIL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 78
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v1, "RASL_R"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->RASL_R:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 79
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/4 v1, 0x2

    const/16 v3, 0x10

    const-string v4, "BLA_W_LP"

    invoke-direct {v0, v4, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->BLA_W_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 80
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/4 v1, 0x3

    const/16 v3, 0x13

    const-string v4, "IDR_W_RADL"

    invoke-direct {v0, v4, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->IDR_W_RADL:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 81
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/4 v1, 0x4

    const/16 v3, 0x14

    const-string v4, "IDR_N_LP"

    invoke-direct {v0, v4, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->IDR_N_LP:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 82
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/4 v1, 0x5

    const/16 v3, 0x15

    const-string v4, "CRA_NUT"

    invoke-direct {v0, v4, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->CRA_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 83
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/4 v1, 0x6

    const/16 v3, 0x20

    const-string v4, "VPS_NUT"

    invoke-direct {v0, v4, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->VPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 84
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/4 v1, 0x7

    const/16 v3, 0x21

    const-string v4, "SPS_NUT"

    invoke-direct {v0, v4, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->SPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 85
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/16 v1, 0x8

    const/16 v3, 0x22

    const-string v4, "PPS_NUT"

    invoke-direct {v0, v4, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 86
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const-string v1, "AUD_NUT"

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->AUD_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 87
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/16 v1, 0xa

    const/16 v2, 0x26

    const-string v3, "FILTER_DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->FILTER_DATA:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 88
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/16 v1, 0xb

    const/16 v2, 0x27

    const-string v3, "PREFIX_SEI_NUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PREFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 89
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/16 v1, 0xc

    const/16 v2, 0x28

    const-string v3, "SUFFIX_SEI_NUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->SUFFIX_SEI_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 90
    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    const/16 v1, 0xd

    const/16 v2, 0x64

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 76
    invoke-static {}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->$values()[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->$VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->typeValue:I

    .line 96
    return-void
.end method

.method static getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    .registers 3
    .param p0, "val"    # I

    .line 99
    invoke-static {}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->values()[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->UNKNOWN:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 99
    return-object v0
.end method

.method static synthetic lambda$getNalType$0(ILcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;)Z
    .registers 3
    .param p0, "val"    # I
    .param p1, "type"    # Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    .line 100
    iget v0, p1, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->typeValue:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;
    .registers 1

    .line 76
    sget-object v0, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->$VALUES:[Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    invoke-virtual {v0}, [Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    return-object v0
.end method
