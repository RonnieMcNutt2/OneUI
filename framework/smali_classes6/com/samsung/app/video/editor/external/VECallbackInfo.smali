.class public Lcom/samsung/app/video/editor/external/VECallbackInfo;
.super Ljava/lang/Object;
.source "VECallbackInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static GETTHUMB_KEY:I

.field public static GETTHUMB_TIME:I


# instance fields
.field private callback:Lcom/samsung/app/video/editor/external/VECallback;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_TIME:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/samsung/app/video/editor/external/VECallbackInfo;->GETTHUMB_KEY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    .local p0, "this":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<TDataType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/samsung/app/video/editor/external/VECallback;
    .registers 2

    .line 15
    .local p0, "this":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<TDataType;>;"
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VECallbackInfo;->callback:Lcom/samsung/app/video/editor/external/VECallback;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataType;"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<TDataType;>;"
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VECallbackInfo;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setCallback(Lcom/samsung/app/video/editor/external/VECallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/app/video/editor/external/VECallback;

    .line 11
    .local p0, "this":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<TDataType;>;"
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/VECallbackInfo;->callback:Lcom/samsung/app/video/editor/external/VECallback;

    .line 12
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/samsung/app/video/editor/external/VECallbackInfo;, "Lcom/samsung/app/video/editor/external/VECallbackInfo<TDataType;>;"
    .local p1, "data":Ljava/lang/Object;, "TDataType;"
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/VECallbackInfo;->data:Ljava/lang/Object;

    .line 20
    return-void
.end method
