.class public Lcom/samsung/android/knox/analytics/model/Event;
.super Lorg/json/JSONObject;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/model/Event$Fields;
    }
.end annotation


# static fields
.field private static final DEFAULT_BULK_VALUE:I = 0x1


# instance fields
.field private bulk:I

.field private data:Ljava/lang/String;

.field private id:I

.field private vid:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "vid"    # I
    .param p3, "bulk"    # I
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    const-string/jumbo v0, "vid"

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v0, "bulk"

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    const-string v0, "data"

    invoke-virtual {p0, v0, p4}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getBulk()I
    .registers 3

    .line 51
    const/4 v0, 0x1

    .line 53
    .local v0, "bulk":I
    :try_start_1
    const-string v1, "bulk"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 56
    goto :goto_d

    .line 54
    :catch_9
    move-exception v1

    .line 55
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 57
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_d
    return v0
.end method

.method public getData()Ljava/lang/String;
    .registers 3

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "data":Ljava/lang/String;
    :try_start_1
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 66
    goto :goto_d

    .line 64
    :catch_9
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_d
    return-object v0
.end method

.method public getId()I
    .registers 3

    .line 31
    const/4 v0, -0x1

    .line 33
    .local v0, "id":I
    :try_start_1
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_8} :catch_a

    move v0, v1

    .line 36
    goto :goto_e

    .line 34
    :catch_a
    move-exception v1

    .line 35
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_e
    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 72
    const-string v0, "bulk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/model/Event;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 73
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_10
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVid()I
    .registers 3

    .line 41
    const/4 v0, -0x1

    .line 43
    .local v0, "vid":I
    :try_start_1
    const-string/jumbo v1, "vid"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_8} :catch_a

    move v0, v1

    .line 46
    goto :goto_e

    .line 44
    :catch_a
    move-exception v1

    .line 45
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_e
    return v0
.end method
