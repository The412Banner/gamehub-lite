.class public final Lapp/revanced/extension/gamehub/WcpExtractor;
.super Ljava/lang/Object;
.source "WcpExtractor.java"


# static fields
.field private static final BUF:I = 0x2000

.field private static final MAX_EXTRACT_BYTES:J = 0x20000000L

.field private static final TAG:Ljava/lang/String; = "BannerHub"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearDir(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lapp/revanced/extension/gamehub/WcpExtractor;->clearDir(Ljava/io/File;)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearDir: failed to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BannerHub"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

# extract(ContentResolver cr, Uri uri, File destDir)
# Locals: v0=tmpDir, v1=tmp/raw, v2=hdr[], v3=b0, v4=b1, v5=b2, v6=b3, v7=raw, v8=bis
.method public static extract(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    # tmpDir = new File(destDir.getParentFile(), destDir.getName() + "_tmp")
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_tmp"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # clearDir(tmpDir); tmpDir.mkdirs()
    invoke-static {v0}, Lapp/revanced/extension/gamehub/WcpExtractor;->clearDir(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    # raw = cr.openInputStream(uri)
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_null_uri

    # bis = new BufferedInputStream(raw)
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    # Read 4-byte magic
    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v2, v1, [B

    # read(buf, 0, 4) — v1=offset=0, v3=length=4
    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-virtual {v8, v2, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v3, 0x2

    if-lt v1, v3, :cond_too_short

    # decode magic bytes — use register-based indices
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    # Extraction try block — on any exception, cleanup tmpDir
    :try_start_extract
    # ZIP: 0x50 0x4B
    const/16 v1, 0x50

    if-ne v3, v1, :cond_not_zip

    const/16 v1, 0x4b

    if-ne v4, v1, :cond_not_zip

    invoke-static {v8, v0}, Lapp/revanced/extension/gamehub/WcpExtractor;->extractZip(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_atomic_swap

    # zstd: 0x28 0xB5 0x2F 0xFD
    :cond_not_zip
    const/16 v1, 0x28

    if-ne v3, v1, :cond_not_zstd

    const/16 v1, 0xb5

    if-ne v4, v1, :cond_not_zstd

    const/16 v1, 0x2f

    if-ne v5, v1, :cond_not_zstd

    const/16 v1, 0xfd

    if-ne v6, v1, :cond_not_zstd

    invoke-static {v8}, Lapp/revanced/extension/gamehub/WcpExtractor;->openZstd(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lapp/revanced/extension/gamehub/WcpExtractor;->extractTar(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_atomic_swap

    # XZ: 0xFD 0x37 0x7A 0x58
    :cond_not_zstd
    const/16 v1, 0xfd

    if-ne v3, v1, :cond_unknown

    const/16 v1, 0x37

    if-ne v4, v1, :cond_unknown

    const/16 v1, 0x7a

    if-ne v5, v1, :cond_unknown

    const/16 v1, 0x58

    if-ne v6, v1, :cond_unknown

    invoke-static {v8}, Lapp/revanced/extension/gamehub/WcpExtractor;->openXz(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lapp/revanced/extension/gamehub/WcpExtractor;->extractTar(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_atomic_swap

    # Unknown format
    :cond_unknown
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unknown format (magic: %02X %02X %02X %02X)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :try_end_extract
    .catch Ljava/lang/Exception; {:try_start_extract .. :try_end_extract} :catch_cleanup

    # Atomic swap: close raw, clearDir destDir, move tmp files to dest, delete tmp
    :goto_atomic_swap
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-static {p2}, Lapp/revanced/extension/gamehub/WcpExtractor;->clearDir(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_no_tmp_files

    array-length v2, v1

    const/4 v3, 0x0

    :goto_move_loop
    if-ge v3, v2, :cond_no_tmp_files

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_move_loop

    :cond_no_tmp_files
    invoke-static {v0}, Lapp/revanced/extension/gamehub/WcpExtractor;->clearDir(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    # Exception cleanup
    :catch_cleanup
    move-exception v1

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-static {v0}, Lapp/revanced/extension/gamehub/WcpExtractor;->clearDir(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1

    # File too short
    :cond_too_short
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-static {v0}, Lapp/revanced/extension/gamehub/WcpExtractor;->clearDir(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/IOException;

    const-string v2, "File too short"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    # Null URI
    :cond_null_uri
    invoke-static {v0}, Lapp/revanced/extension/gamehub/WcpExtractor;->clearDir(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractTar(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "org.apache.commons.compress.archivers.tar.TarArchiveInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/io/InputStream;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "s"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v3, 0x2000

    new-array v3, v3, [B

    # long[] total = {0}
    const/4 v5, 0x1

    new-array v5, v5, [J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    const/4 v6, 0x0

    move v7, v4

    :goto_0
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    if-nez v6, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "getName"

    new-array v10, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    :cond_1
    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    const-string v9, "profile.json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v8, v3, v5}, Lapp/revanced/extension/gamehub/WcpExtractor;->pipeReflected(Ljava/lang/Object;Ljava/io/OutputStream;[B[J)V

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FEXCore"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :goto_0

    move v7, v1

    goto :goto_0

    :cond_4
    const-string v9, "./"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_0

    :cond_6
    const-string v10, ".."

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :goto_0

    if-eqz v7, :cond_7

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_8
    :goto_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {p0, v8, v3, v5}, Lapp/revanced/extension/gamehub/WcpExtractor;->pipeReflected(Ljava/lang/Object;Ljava/io/OutputStream;[B[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_9
    const-string p1, "close"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static extractZip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    # long[] total = {0}
    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v2, p0, v0, v1}, Lapp/revanced/extension/gamehub/WcpExtractor;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;[B[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    return-void
.end method

.method private static openXz(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "org.tukaani.xz.XZInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/io/InputStream;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method private static openZstd(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.github.luben.zstd.ZstdInputStreamNoFinalizer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/io/InputStream;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

# pipe(InputStream in, OutputStream out, byte[] buf, long[] totalRef)
.method private static pipe(Ljava/io/InputStream;Ljava/io/OutputStream;[B[J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    # totalRef[0] += n
    aget-wide v2, p3, v0

    int-to-long v3, v1

    add-long/2addr v2, v3

    aput-wide v2, p3, v0

    # if (totalRef[0] > MAX_EXTRACT_BYTES) throw
    sget-wide v3, Lapp/revanced/extension/gamehub/WcpExtractor;->MAX_EXTRACT_BYTES:J

    cmp-long v3, v2, v3

    if-lez v3, :cond_write

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Extraction size limit exceeded"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_write
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

# pipeReflected(Object tar, OutputStream out, byte[] buf, long[] totalRef)
.method private static pipeReflected(Ljava/lang/Object;Ljava/io/OutputStream;[B[J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, [B

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const-string v2, "read"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_0
    # invoke read(buf, 0, buf.length)
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    # totalRef[0] += n
    aget-wide v2, p3, v3

    int-to-long v4, v1

    add-long/2addr v2, v4

    aput-wide v2, p3, v3

    # if (totalRef[0] > MAX_EXTRACT_BYTES) throw
    sget-wide v4, Lapp/revanced/extension/gamehub/WcpExtractor;->MAX_EXTRACT_BYTES:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_write

    new-instance v2, Ljava/io/IOException;

    const-string v4, "Extraction size limit exceeded"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_write
    invoke-virtual {p1, p2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method
