.class Lcom/samsung/android/knox/SemPersonaManager$1;
.super Ljava/lang/Object;
.source "SemPersonaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/SemPersonaManager;->drawKnoxAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$view:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/appwidget/AppWidgetHostView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3379
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/knox/SemPersonaManager$1;->val$user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/samsung/android/knox/SemPersonaManager$1;->val$view:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 3383
    :try_start_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3384
    .local v0, "dualAppBadge":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3385
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaManager$1;->val$user:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3386
    .local v2, "badgeicon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2f

    .line 3387
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3388
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3389
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x55

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3390
    iget-object v4, p0, Lcom/samsung/android/knox/SemPersonaManager$1;->val$view:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v0, v3}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 3394
    .end local v0    # "dualAppBadge":Landroid/widget/ImageView;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "badgeicon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2f
    goto :goto_34

    .line 3392
    :catch_30
    move-exception v0

    .line 3393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3395
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_34
    return-void
.end method
