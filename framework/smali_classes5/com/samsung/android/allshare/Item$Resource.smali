.class public abstract Lcom/samsung/android/allshare/Item$Resource;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Resource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allshare/Item;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/allshare/Item;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/allshare/Item;

    .line 251
    iput-object p1, p0, Lcom/samsung/android/allshare/Item$Resource;->this$0:Lcom/samsung/android/allshare/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method


# virtual methods
.method public abstract getBitrate()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getMimetype()Ljava/lang/String;
.end method

.method public abstract getResolution()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
.end method

.method public abstract getType()Lcom/samsung/android/allshare/Item$MediaType;
.end method

.method public abstract getURI()Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
