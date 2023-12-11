.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ResolverActivity;

.field public final synthetic f$1:Landroid/widget/TabHost;

.field public final synthetic f$2:Lcom/android/internal/widget/ViewPager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;->f$1:Landroid/widget/TabHost;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;->f$2:Lcom/android/internal/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;->f$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;->f$1:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda10;->f$2:Lcom/android/internal/widget/ViewPager;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverActivity;->$r8$lambda$QVUQ1DJSGYkx1hvSuT878b7Fm6w(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V

    return-void
.end method
