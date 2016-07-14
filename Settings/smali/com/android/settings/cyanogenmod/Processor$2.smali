.class Lcom/android/settings/cyanogenmod/Processor$2;
.super Ljava/lang/Thread;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/Processor;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/Processor;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$newValue:Ljava/lang/String;

.field final synthetic val$nrcpus:I


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/Processor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/Processor$2;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    iput p2, p0, Lcom/android/settings/cyanogenmod/Processor$2;->val$nrcpus:I

    iput-object p3, p0, Lcom/android/settings/cyanogenmod/Processor$2;->val$file:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/cyanogenmod/Processor$2;->val$newValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "count":I
    const/4 v6, 0x5

    .line 281
    .local v6, "maxcount":I
    const-string v10, "1"

    .line 282
    .local v10, "on":Ljava/lang/String;
    const-string v9, "0"

    .line 283
    .local v9, "off":Ljava/lang/String;
    const-string v11, ""

    .line 284
    .local v11, "onfile":Ljava/lang/String;
    const-string v3, ""

    .line 285
    .local v3, "cpufile":Ljava/lang/String;
    const-string v12, ""

    .line 286
    .local v12, "savedstate":Ljava/lang/String;
    const-string v13, ""

    .line 287
    .local v13, "state":Ljava/lang/String;
    const-string v7, "mpdecision"

    .line 288
    .local v7, "mpdec":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v8

    .line 290
    .local v8, "mpdecstate":Landroid/os/SystemService$State;
    sget-object v14, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-virtual {v8, v14}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 291
    invoke-static {v7}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 294
    :cond_0
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/cyanogenmod/Processor$2;->val$nrcpus:I

    if-ge v5, v14, :cond_5

    .line 295
    const-string v14, "/sys/devices/system/cpu/cpu0/online"

    const-string v15, "cpu0"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cpu"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/Processor$2;->val$file:Ljava/lang/String;

    const-string v15, "cpu0"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cpu"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-static {v11}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 299
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 300
    invoke-static {v11}, Lcom/android/settings/Utils;->fileIsWritable(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 301
    invoke-static {v11, v10}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    :cond_1
    :goto_1
    if-ge v2, v6, :cond_2

    .line 311
    const-wide/16 v14, 0xa

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 312
    invoke-static {v3}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 313
    invoke-static {v3}, Lcom/android/settings/Utils;->fileIsWritable(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/Processor$2;->val$newValue:Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    :cond_2
    const/4 v2, 0x0

    .line 327
    invoke-static {v11}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 329
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 330
    invoke-static {v11, v9}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 303
    :cond_4
    const-string v14, "ro.hardware"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "hw":Ljava/lang/String;
    const-string v14, "CPUSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not writable, did you set ownership in init."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".rc?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 333
    .end local v4    # "hw":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 336
    :cond_5
    sget-object v14, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-virtual {v8, v14}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 337
    invoke-static {v7}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 339
    :cond_6
    return-void

    .line 317
    :cond_7
    :try_start_1
    const-string v14, "CPUSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not writable, did you set ueventd rules?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 322
    if-ne v2, v6, :cond_1

    .line 323
    const-string v14, "CPUSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed setting new value to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
