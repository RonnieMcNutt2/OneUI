.class Lcom/android/internal/app/SkinColorController$1;
.super Landroid/database/ContentObserver;
.source "SkinColorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/SkinColorController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/SkinColorController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SkinColorController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/SkinColorController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/android/internal/app/SkinColorController$1;->this$0:Lcom/android/internal/app/SkinColorController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 76
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 78
    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "setting":Ljava/lang/String;
    :goto_b
    if-eqz v0, :cond_12

    .line 80
    iget-object v1, p0, Lcom/android/internal/app/SkinColorController$1;->this$0:Lcom/android/internal/app/SkinColorController;

    invoke-static {v1, v0}, Lcom/android/internal/app/SkinColorController;->-$$Nest$monSettingChanged(Lcom/android/internal/app/SkinColorController;Ljava/lang/String;)V

    .line 82
    :cond_12
    return-void
.end method
