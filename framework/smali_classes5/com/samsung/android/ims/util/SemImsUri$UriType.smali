.class public final enum Lcom/samsung/android/ims/util/SemImsUri$UriType;
.super Ljava/lang/Enum;
.source "SemImsUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/util/SemImsUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UriType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ims/util/SemImsUri$UriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/ims/util/SemImsUri$UriType;

.field public static final enum SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

.field public static final enum TEL_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

.field public static final enum URN:Lcom/samsung/android/ims/util/SemImsUri$UriType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/ims/util/SemImsUri$UriType;
    .registers 3

    .line 46
    sget-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->TEL_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    sget-object v2, Lcom/samsung/android/ims/util/SemImsUri$UriType;->URN:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/ims/util/SemImsUri$UriType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    const-string v1, "TEL_URI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ims/util/SemImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->TEL_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 48
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    const-string v1, "SIP_URI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ims/util/SemImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 49
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    const-string v1, "URN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ims/util/SemImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->URN:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 46
    invoke-static {}, Lcom/samsung/android/ims/util/SemImsUri$UriType;->$values()[Lcom/samsung/android/ims/util/SemImsUri$UriType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->$VALUES:[Lcom/samsung/android/ims/util/SemImsUri$UriType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemImsUri$UriType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/ims/util/SemImsUri$UriType;
    .registers 1

    .line 46
    sget-object v0, Lcom/samsung/android/ims/util/SemImsUri$UriType;->$VALUES:[Lcom/samsung/android/ims/util/SemImsUri$UriType;

    invoke-virtual {v0}, [Lcom/samsung/android/ims/util/SemImsUri$UriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ims/util/SemImsUri$UriType;

    return-object v0
.end method
