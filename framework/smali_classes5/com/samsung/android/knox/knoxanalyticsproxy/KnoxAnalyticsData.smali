.class public Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;
.super Ljava/lang/Object;
.source "KnoxAnalyticsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_Pid_PackageNameFlag"

.field private static final USER_TYPE_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_UserId_UserTypeFlag"


# instance fields
.field private event:Ljava/lang/String;

.field public eventId:J

.field private feature:Ljava/lang/String;

.field private payload:Landroid/os/Bundle;

.field private schemaVersion:I

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 219
    new-instance v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->eventId:J

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "schemaVersion"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    .line 43
    iput-object p3, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->generateTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    .line 46
    return-void
.end method

.method private generateTimestamp()J
    .registers 5

    .line 50
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->eventId:J

    return-wide v0
.end method

.method public getFeature()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Landroid/os/Bundle;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSchemaVersion()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 187
    iget-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    return-wide v0
.end method

.method public setPackageNameProperty(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 162
    const-string v0, "ReservedKey_Pid_PackageNameFlag"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public setProperty(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 83
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 84
    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 94
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    return-void
.end method

.method public setProperty(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .line 138
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 117
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setProperty(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 105
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method public setUserTypeProperty(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 150
    const-string v0, "ReservedKey_UserId_UserTypeFlag"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "schemaVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "payload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_52
    const-string/jumbo v1, "null"

    :goto_55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eventId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->eventId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 206
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->schemaVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->event:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 210
    iget-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    iget-wide v0, p0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->eventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    return-void
.end method
