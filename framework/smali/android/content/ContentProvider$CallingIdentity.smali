.class public final Landroid/content/ContentProvider$CallingIdentity;
.super Ljava/lang/Object;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallingIdentity"
.end annotation


# instance fields
.field public final binderToken:J

.field public final callingAttributionSource:Landroid/content/AttributionSource;

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>(Landroid/content/ContentProvider;JLandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "this$0"    # Landroid/content/ContentProvider;
    .param p2, "binderToken"    # J
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1316
    iput-object p1, p0, Landroid/content/ContentProvider$CallingIdentity;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1317
    iput-wide p2, p0, Landroid/content/ContentProvider$CallingIdentity;->binderToken:J

    .line 1318
    iput-object p4, p0, Landroid/content/ContentProvider$CallingIdentity;->callingAttributionSource:Landroid/content/AttributionSource;

    .line 1319
    return-void
.end method
