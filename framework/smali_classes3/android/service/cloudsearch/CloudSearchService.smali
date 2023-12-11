.class public abstract Landroid/service/cloudsearch/CloudSearchService;
.super Landroid/app/Service;
.source "CloudSearchService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.cloudsearch.CloudSearchService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    return-void
.end method

.method public abstract onSearch(Landroid/app/cloudsearch/SearchRequest;)V
.end method

.method public final returnResults(Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .registers 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/app/cloudsearch/SearchResponse;

    .line 88
    return-void
.end method
