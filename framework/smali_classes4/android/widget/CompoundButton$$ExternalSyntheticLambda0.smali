.class public final synthetic Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/CompoundButton;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;->f$0:Landroid/widget/CompoundButton;

    iput-object p2, p0, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;->f$0:Landroid/widget/CompoundButton;

    iget-object v1, p0, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->$r8$lambda$LMZE0CcHB-Lvr62o7G5F9P59ml0(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
