.class public final enum Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
.super Ljava/lang/Enum;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageViewerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum BUFFERING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;


# instance fields
.field private final enumString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .registers 5

    .line 116
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    sget-object v1, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->BUFFERING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    sget-object v3, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    sget-object v4, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 121
    new-instance v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 126
    new-instance v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->BUFFERING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 131
    new-instance v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v1, "SHOWING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 142
    new-instance v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v1, "CONTENT_CHANGED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 147
    new-instance v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 116
    invoke-static {}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->$values()[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->$VALUES:[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput-object p3, p0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->enumString:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .registers 2
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 166
    if-nez p0, :cond_5

    .line 167
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 169
    :cond_5
    const-string v0, "BUFFERING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 170
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->BUFFERING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 171
    :cond_10
    const-string v0, "CONTENT_CHANGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 172
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 173
    :cond_1b
    const-string v0, "SHOWING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 174
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 175
    :cond_26
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 176
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 177
    :cond_31
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 178
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 180
    :cond_3c
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 116
    const-class v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .registers 1

    .line 116
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->$VALUES:[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0
.end method


# virtual methods
.method public enumToString()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->enumString:Ljava/lang/String;

    return-object v0
.end method
