.class Lcom/android/internal/app/ResolverActivity$5;
.super Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->configureMiniResolverContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic val$icon:Landroid/widget/ImageView;

.field final synthetic val$otherProfileResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "x0"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 2044
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$5;->val$otherProfileResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$5;->val$icon:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 2047
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2048
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->val$otherProfileResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2049
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->val$icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->val$otherProfileResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 2051
    :cond_19
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 2044
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$5;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
