.class public final enum Lcom/samsung/app/video/editor/external/AppName;
.super Ljava/lang/Enum;
.source "AppName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/AppName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/app/video/editor/external/AppName;

.field public static final enum APP_NAME_HIGHLIGHT:Lcom/samsung/app/video/editor/external/AppName;

.field public static final enum APP_NAME_STORYVIDEO:Lcom/samsung/app/video/editor/external/AppName;

.field public static final enum APP_NAME_VE_FULL:Lcom/samsung/app/video/editor/external/AppName;

.field public static final enum APP_NAME_VE_LITE:Lcom/samsung/app/video/editor/external/AppName;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 8
    new-instance v0, Lcom/samsung/app/video/editor/external/AppName;

    const-string v1, "APP_NAME_VE_LITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/AppName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/AppName;->APP_NAME_VE_LITE:Lcom/samsung/app/video/editor/external/AppName;

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/AppName;

    const-string v2, "APP_NAME_VE_FULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/app/video/editor/external/AppName;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/AppName;->APP_NAME_VE_FULL:Lcom/samsung/app/video/editor/external/AppName;

    .line 10
    new-instance v2, Lcom/samsung/app/video/editor/external/AppName;

    const-string v3, "APP_NAME_HIGHLIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/app/video/editor/external/AppName;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/app/video/editor/external/AppName;->APP_NAME_HIGHLIGHT:Lcom/samsung/app/video/editor/external/AppName;

    .line 11
    new-instance v3, Lcom/samsung/app/video/editor/external/AppName;

    const-string v4, "APP_NAME_STORYVIDEO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/samsung/app/video/editor/external/AppName;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/AppName;->APP_NAME_STORYVIDEO:Lcom/samsung/app/video/editor/external/AppName;

    .line 7
    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/app/video/editor/external/AppName;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/AppName;->$VALUES:[Lcom/samsung/app/video/editor/external/AppName;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/samsung/app/video/editor/external/AppName;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/AppName;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/samsung/app/video/editor/external/AppName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/AppName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/app/video/editor/external/AppName;
    .registers 1

    .line 7
    sget-object v0, Lcom/samsung/app/video/editor/external/AppName;->$VALUES:[Lcom/samsung/app/video/editor/external/AppName;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/AppName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/AppName;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/samsung/app/video/editor/external/AppName;->value:I

    return v0
.end method
