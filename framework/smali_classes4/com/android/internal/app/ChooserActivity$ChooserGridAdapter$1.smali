.class Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field final synthetic val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 3295
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;->val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 3298
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 3299
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 3300
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .line 3304
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 3305
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 3306
    return-void
.end method
