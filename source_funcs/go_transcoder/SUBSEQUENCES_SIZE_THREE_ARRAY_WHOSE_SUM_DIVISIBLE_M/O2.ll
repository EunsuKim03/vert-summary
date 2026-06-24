; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musleabihf"

%"internal/task.Task" = type { ptr, ptr, i64, %"sync/atomic.noCopy", %"internal/task.state", i8, i1, i8, ptr }
%"sync/atomic.noCopy" = type {}
%"internal/task.state" = type { i64, ptr, i64, i64, ptr, %"internal/task.Semaphore" }
%"internal/task.Semaphore" = type { %"internal/futex.Futex" }
%"internal/futex.Futex" = type { %"sync/atomic.Bool" }
%"sync/atomic.Bool" = type { %"sync/atomic.noCopy", i32 }
%runtime._string = type { ptr, i64 }
%runtime.elfHeader = type { i32, i8, i8, i8, i8, i8, [7 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }

@"internal/task.activeTasks" = internal unnamed_addr global ptr @"internal/task.mainTask", align 8, !dbg !0
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !50
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !52
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !58
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !61
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !65
@"internal/task.otherGoroutines" = internal unnamed_addr global i32 0, align 4, !dbg !70
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !72
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !77
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !83
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !85
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !93
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !100
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !106
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !111
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !116
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !121
@"runtime$string.25" = internal unnamed_addr constant [14 x i8] c"divide by zero", align 1, !dbg !126
@runtime.stackTop = internal unnamed_addr global i64 0, align 8, !dbg !131
@runtime.main_argv = internal unnamed_addr global ptr null, align 8, !dbg !134
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !137
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !139
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !141
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !143
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !145
@.string = private unnamed_addr global [6 x i8] c"0.41.1", align 1
@runtime.buildVersion = local_unnamed_addr global %runtime._string { ptr @.string, i64 6 }, align 8

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) local_unnamed_addr #0

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #0

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define internal fastcc void @"(*internal/task.Mutex).Unlock"(ptr nocapture dereferenceable_or_null(4) %m) unnamed_addr #1 !dbg !1735 {
entry:
    #dbg_value(ptr %m, !1740, !DIExpression(), !1742)
  %0 = icmp eq ptr %m, null, !dbg !1743
  br i1 %0, label %gep.throw, label %"(*sync/atomic.Uint32).Swap.exit", !dbg !1743

"(*sync/atomic.Uint32).Swap.exit":                ; preds = %entry
    #dbg_value(ptr %m, !1744, !DIExpression(), !1752)
    #dbg_value(i32 0, !1751, !DIExpression(), !1754)
    #dbg_value(ptr %m, !1755, !DIExpression(), !1763)
    #dbg_value(i32 0, !1762, !DIExpression(), !1763)
  %1 = atomicrmw xchg ptr %m, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1763
    #dbg_value(i32 %1, !1741, !DIExpression(), !1765)
  switch i32 %1, label %if.done [
    i32 0, label %if.then
    i32 2, label %gep.next5
  ], !dbg !1766

if.then:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit"
  tail call fastcc void @runtime._panic(), !dbg !1767
  unreachable, !dbg !1767

gep.next5:                                        ; preds = %"(*sync/atomic.Uint32).Swap.exit"
    #dbg_value(ptr %m, !1740, !DIExpression(), !1768)
    #dbg_value(ptr %m, !1769, !DIExpression(), !1776)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #13, !dbg !1778
  br label %if.done, !dbg !1766

if.done:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit", %gep.next5
  ret void, !dbg !1779

gep.throw:                                        ; preds = %entry
  tail call fastcc void @runtime.nilPanic(), !dbg !1743
  unreachable, !dbg !1743
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) local_unnamed_addr #0

declare ptr @tinygo_task_current() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture readonly dereferenceable_or_null(88) %t) local_unnamed_addr #1 !dbg !1780 {
entry:
    #dbg_value(ptr %t, !1784, !DIExpression(), !1789)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !1794)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1796, !DIExpression(), !1803)
    #dbg_value(i32 0, !1801, !DIExpression(), !1805)
    #dbg_value(i32 1, !1802, !DIExpression(), !1806)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1807, !DIExpression(), !1814)
    #dbg_value(i32 0, !1812, !DIExpression(), !1814)
    #dbg_value(i32 1, !1813, !DIExpression(), !1814)
  %0 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1814
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1814
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i", !dbg !1816

"(*sync/atomic.Uint32).Swap.exit.preheader.i":    ; preds = %entry
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !1817)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !1818)
    #dbg_value(i32 2, !1751, !DIExpression(), !1820)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !1821)
    #dbg_value(i32 2, !1762, !DIExpression(), !1821)
  %2 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1821
  %.not4.i = icmp eq i32 %2, 0, !dbg !1823
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1816

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i", %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !1824)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1825, !DIExpression(), !1831)
    #dbg_value(i32 2, !1830, !DIExpression(), !1833)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #13, !dbg !1834
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !1818)
    #dbg_value(i32 2, !1751, !DIExpression(), !1820)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !1821)
    #dbg_value(i32 2, !1762, !DIExpression(), !1821)
  %3 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1821
  %.not.i = icmp eq i32 %3, 0, !dbg !1823
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1816

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %"(*sync/atomic.Uint32).Swap.exit.preheader.i"
    #dbg_value(i1 false, !1785, !DIExpression(), !1835)
    #dbg_value(ptr @"internal/task.activeTasks", !1786, !DIExpression(), !1836)
  %4 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !1837
  %.not.not6 = icmp eq ptr %4, null, !dbg !1838
  br i1 %.not.not6, label %if.then4.critedge, label %deref.next10, !dbg !1839

for.loop:                                         ; preds = %deref.next10
  %5 = getelementptr inbounds nuw i8, ptr %7, i64 56, !dbg !1840
    #dbg_value(ptr %5, !1786, !DIExpression(), !1841)
  %6 = load ptr, ptr %5, align 8, !dbg !1837
  %.not.not = icmp eq ptr %6, null, !dbg !1838
  br i1 %.not.not, label %if.then4.critedge, label %deref.next10, !dbg !1839

deref.next10:                                     ; preds = %"(*internal/task.Mutex).Lock.exit", %for.loop
  %7 = phi ptr [ %6, %for.loop ], [ %4, %"(*internal/task.Mutex).Lock.exit" ]
  %8 = phi ptr [ %5, %for.loop ], [ @"internal/task.activeTasks", %"(*internal/task.Mutex).Lock.exit" ]
    #dbg_value(ptr %8, !1786, !DIExpression(), !1842)
    #dbg_value(ptr %t, !1784, !DIExpression(), !1843)
  %9 = icmp eq ptr %7, %t, !dbg !1844
    #dbg_value(ptr %7, !1786, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !1845)
  br i1 %9, label %store.next, label %for.loop, !dbg !1839

store.next:                                       ; preds = %deref.next10
    #dbg_value(ptr %8, !1786, !DIExpression(), !1846)
    #dbg_value(ptr %t, !1784, !DIExpression(), !1847)
  %10 = getelementptr inbounds nuw i8, ptr %t, i64 56, !dbg !1848
  %11 = load ptr, ptr %10, align 8, !dbg !1848
  store ptr %11, ptr %8, align 8, !dbg !1849
    #dbg_value(i1 true, !1785, !DIExpression(), !1850)
  %12 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !1851
  %13 = add i32 %12, -1, !dbg !1851
  store i32 %13, ptr @"internal/task.otherGoroutines", align 4, !dbg !1851
    #dbg_value(i32 %13, !1788, !DIExpression(), !1851)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1852)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !1854)
    #dbg_value(i32 0, !1751, !DIExpression(), !1856)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !1857)
    #dbg_value(i32 0, !1762, !DIExpression(), !1857)
  %14 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1857
    #dbg_value(i32 %14, !1741, !DIExpression(), !1859)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !1860

if.then.i:                                        ; preds = %store.next
  tail call fastcc void @runtime._panic(), !dbg !1861
  unreachable, !dbg !1861

gep.next5.i:                                      ; preds = %store.next
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1862)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1769, !DIExpression(), !1863)
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #13, !dbg !1865
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !1860

"(*internal/task.Mutex).Unlock.exit":             ; preds = %store.next, %gep.next5.i
    #dbg_value(i1 poison, !1785, !DIExpression(), !1866)
  ret void, !dbg !1867

if.then4.critedge:                                ; preds = %for.loop, %"(*internal/task.Mutex).Lock.exit"
  %15 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !1851
  %16 = add i32 %15, -1, !dbg !1851
  store i32 %16, ptr @"internal/task.otherGoroutines", align 4, !dbg !1851
    #dbg_value(i32 %13, !1788, !DIExpression(), !1851)
  tail call fastcc void @"(*internal/task.Mutex).Unlock"(ptr nonnull @"internal/task.activeTaskLock"), !dbg !1868
    #dbg_value(i1 poison, !1785, !DIExpression(), !1866)
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.13", i64 17), !dbg !1869
  unreachable, !dbg !1839
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) local_unnamed_addr #0

declare void @tinygo_scanCurrentStack() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) local_unnamed_addr #1 !dbg !1870 {
entry:
    #dbg_value(i32 %sig, !1874, !DIExpression(), !1876)
  %0 = tail call ptr @tinygo_task_current() #13, !dbg !1877
    #dbg_value(ptr %0, !1881, !DIExpression(), !1883)
  %1 = icmp eq ptr %0, null, !dbg !1884
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !1885

if.then.i:                                        ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !1886
  unreachable, !dbg !1885

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1881, !DIExpression(), !1887)
  %2 = tail call ptr @llvm.stacksave.p0(), !dbg !1888
  %3 = ptrtoint ptr %2 to i64, !dbg !1891
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1892
  store i64 %3, ptr %4, align 8, !dbg !1892
    #dbg_value(i64 %3, !1875, !DIExpression(), !1892)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1893, !DIExpression(), !1899)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1901, !DIExpression(), !1905)
    #dbg_value(i32 -1, !1904, !DIExpression(), !1907)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1908, !DIExpression(), !1912)
    #dbg_value(i32 -1, !1911, !DIExpression(), !1912)
  %5 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !1912
  %6 = icmp eq i32 %5, 1, !dbg !1914
  br i1 %6, label %gep.next4.i, label %"(*internal/task.waitGroup).done.exit", !dbg !1915

gep.next4.i:                                      ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1893, !DIExpression(), !1916)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1917, !DIExpression(), !1920)
  tail call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #13, !dbg !1922
  br label %"(*internal/task.waitGroup).done.exit", !dbg !1915

"(*internal/task.waitGroup).done.exit":           ; preds = %"internal/task.Current.exit", %gep.next4.i
    #dbg_value(ptr @"internal/task.gcState", !1923, !DIExpression(), !1928)
    #dbg_value(ptr @"internal/task.gcState", !1930, !DIExpression(), !1935)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !1935
  %8 = icmp eq i32 %7, 1, !dbg !1937
  br i1 %8, label %for.body, label %for.done, !dbg !1938

for.body:                                         ; preds = %"(*internal/task.waitGroup).done.exit", %for.body
    #dbg_value(ptr @"internal/task.gcState", !1825, !DIExpression(), !1939)
    #dbg_value(i32 1, !1830, !DIExpression(), !1941)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #13, !dbg !1942
    #dbg_value(ptr @"internal/task.gcState", !1923, !DIExpression(), !1928)
    #dbg_value(ptr @"internal/task.gcState", !1930, !DIExpression(), !1935)
  %9 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !1935
  %10 = icmp eq i32 %9, 1, !dbg !1937
  br i1 %10, label %for.body, label %for.done, !dbg !1938

for.done:                                         ; preds = %for.body, %"(*internal/task.waitGroup).done.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1893, !DIExpression(), !1943)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1901, !DIExpression(), !1945)
    #dbg_value(i32 -1, !1904, !DIExpression(), !1947)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1908, !DIExpression(), !1948)
    #dbg_value(i32 -1, !1911, !DIExpression(), !1948)
  %11 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !1948
  %12 = icmp eq i32 %11, 1, !dbg !1950
  br i1 %12, label %gep.next4.i3, label %"(*internal/task.waitGroup).done.exit4", !dbg !1951

gep.next4.i3:                                     ; preds = %for.done
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1893, !DIExpression(), !1952)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1917, !DIExpression(), !1953)
  tail call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #13, !dbg !1955
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !1951

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !1956
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #2 !dbg !1957 {
entry:
    #dbg_value(ptr %msg.data, !1961, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1962)
    #dbg_value(i64 %msg.len, !1961, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1962)
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !1963
    #dbg_value(%runtime._string poison, !1961, !DIExpression(), !1964)
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !1965
  unreachable, !dbg !1966
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 14, 24) %msg.len) unnamed_addr #2 !dbg !1967 {
entry:
    #dbg_value(ptr %addr, !1971, !DIExpression(), !1973)
    #dbg_value(ptr %msg.data, !1972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1973)
    #dbg_value(i64 %msg.len, !1972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1973)
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !1974
    #dbg_value(ptr %addr, !1971, !DIExpression(), !1975)
  %0 = ptrtoint ptr %addr to i64, !dbg !1976
  %1 = add i64 %0, -5, !dbg !1977
  tail call fastcc void @runtime.printptr(i64 %1), !dbg !1978
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !1979
    #dbg_value(%runtime._string poison, !1972, !DIExpression(), !1980)
  tail call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !1981
  tail call fastcc void @runtime.printnl(), !dbg !1982
  tail call void @abort() #13, !dbg !1983
  unreachable, !dbg !1984
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #4 !dbg !1985 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !1990
    #dbg_value(ptr %s.data, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1997)
    #dbg_value(i64 %s.len, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1997)
    #dbg_value(i64 0, !1988, !DIExpression(), !1998)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !1999)
  br label %for.body, !dbg !2000

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !1988, !DIExpression(), !2001)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2002)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2003
  %2 = load i8, ptr %1, align 1, !dbg !2003
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2004
    #dbg_value(i8 %2, !1995, !DIExpression(), !2004)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2004
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #13, !dbg !2005
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2006
  %4 = add nuw nsw i64 %0, 1, !dbg !2007
    #dbg_value(i64 %4, !1988, !DIExpression(), !2008)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2009
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2000

for.done:                                         ; preds = %for.body
  ret void, !dbg !2010
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #4 !dbg !2011 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2018
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2020
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2022
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2024
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2026
    #dbg_value(i64 %ptr, !2015, !DIExpression(), !2029)
  %0 = icmp eq i64 %ptr, 0, !dbg !2030
  br i1 %0, label %for.body.i.preheader, label %if.done, !dbg !2031

for.body.i.preheader:                             ; preds = %entry
    #dbg_value(i64 0, !1988, !DIExpression(), !2032)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2033)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2034
    #dbg_value(i8 110, !1995, !DIExpression(), !2034)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2034
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2036
    #dbg_value(i64 1, !1988, !DIExpression(), !2037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2034
    #dbg_value(i8 105, !1995, !DIExpression(), !2034)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2034
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2036
    #dbg_value(i64 2, !1988, !DIExpression(), !2037)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2034
    #dbg_value(i8 108, !1995, !DIExpression(), !2034)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2034
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2036
    #dbg_value(i64 3, !1988, !DIExpression(), !2037)
  br label %common.ret, !dbg !2031

common.ret:                                       ; preds = %if.done2, %for.body.i.preheader
  ret void, !dbg !2031

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2038
    #dbg_value(i8 48, !1995, !DIExpression(), !2038)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2038
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #13, !dbg !2039
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2040
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2041
    #dbg_value(i8 120, !1995, !DIExpression(), !2041)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2041
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #13, !dbg !2042
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2043
    #dbg_value(i64 0, !2016, !DIExpression(), !2044)
  br label %for.body, !dbg !2031

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2016, !DIExpression(), !2045)
    #dbg_value(i64 %7, !2015, !DIExpression(), !2046)
  %8 = lshr i64 %7, 60, !dbg !2047
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2048
    #dbg_value(i8 %9, !2017, !DIExpression(), !2049)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2050
  br i1 %10, label %if.then1, label %if.else, !dbg !2031

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2017, !DIExpression(), !2051)
  %11 = or disjoint i8 %9, 48, !dbg !2052
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2053
    #dbg_value(i8 %11, !1995, !DIExpression(), !2053)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2053
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #13, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2055
  br label %if.done2, !dbg !2031

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2056
    #dbg_value(i64 %13, !2015, !DIExpression(), !2056)
  %14 = add nuw nsw i64 %6, 1, !dbg !2057
    #dbg_value(i64 %14, !2016, !DIExpression(), !2045)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2058
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2031

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2017, !DIExpression(), !2059)
  %15 = add nuw nsw i8 %9, 87, !dbg !2060
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2061
    #dbg_value(i8 %15, !1995, !DIExpression(), !2061)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2061
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #13, !dbg !2062
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2063
  br label %if.done2, !dbg !2031
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #4 !dbg !2064 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2066
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2068
    #dbg_value(i8 10, !1995, !DIExpression(), !2069)
    #dbg_value(i8 10, !1995, !DIExpression(), !2068)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2068
    #dbg_value(i8 10, !1995, !DIExpression(), !2068)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #13, !dbg !2070
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2071
  ret void, !dbg !2072
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #7

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #2 !dbg !2073 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2074
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2075
  unreachable, !dbg !2076
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.lookupPanic() unnamed_addr #2 !dbg !2077 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2078
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.19", i64 18), !dbg !2079
  unreachable, !dbg !2080
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #8 !dbg !2081 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2102)
    #dbg_value(ptr @"internal/task$pack", !2086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2102)
    #dbg_value(i8 1, !2087, !DIExpression(), !2102)
  %0 = tail call ptr @tinygo_task_current() #13, !dbg !2103
    #dbg_value(ptr %0, !1881, !DIExpression(), !2105)
    #dbg_value(ptr %0, !1881, !DIExpression(), !2106)
  %1 = icmp eq ptr %0, null, !dbg !2107
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2108

if.then.i:                                        ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2109
  unreachable, !dbg !2108

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1881, !DIExpression(), !2110)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2111
  %3 = load ptr, ptr %2, align 8, !dbg !2111
    #dbg_value(ptr %3, !2088, !DIExpression(), !2112)
    #dbg_value(ptr %3, !2088, !DIExpression(), !2113)
  %.not = icmp eq ptr %3, null, !dbg !2114
  br i1 %.not, label %if.done5, label %store.next, !dbg !2115

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2088, !DIExpression(), !2116)
    #dbg_value({ ptr, ptr } poison, !2086, !DIExpression(), !2117)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2118
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2118
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2118
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2118
    #dbg_value({ ptr, ptr } poison, !2100, !DIExpression(), !2118)
    #dbg_value(ptr %3, !2088, !DIExpression(), !2119)
    #dbg_value(i8 1, !2087, !DIExpression(), !2120)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2121
  store i8 1, ptr %5, align 1, !dbg !2121
    #dbg_value(i8 1, !2101, !DIExpression(), !2121)
    #dbg_value(ptr %3, !2088, !DIExpression(), !2122)
  tail call void @tinygo_longjmp(ptr nonnull %3) #13, !dbg !2123
  br label %if.done5, !dbg !2115

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2087, !DIExpression(), !2124)
  tail call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2125
    #dbg_value({ ptr, ptr } poison, !2086, !DIExpression(), !2126)
  tail call fastcc void @runtime.printitf(), !dbg !2127
  tail call fastcc void @runtime.printnl(), !dbg !2128
  tail call void @abort() #13, !dbg !2129
  unreachable, !dbg !2130
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #0

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #4 !dbg !2131 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2162
    #dbg_value(ptr @"reflect/types.type:basic:string", !2135, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2165)
    #dbg_value(ptr @"internal/task$pack", !2135, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2165)
    #dbg_value({ ptr, ptr } poison, !2135, !DIExpression(), !2166)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2157, !DIExpression(), !2167)
    #dbg_value(ptr @"internal/task$string", !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2168)
    #dbg_value(i64 30, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2168)
    #dbg_value(i64 0, !1988, !DIExpression(), !2169)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2170)
  br label %for.body.i, !dbg !2171

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !1988, !DIExpression(), !2172)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2173)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2174
  %2 = load i8, ptr %1, align 1, !dbg !2174
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2175
    #dbg_value(i8 %2, !1995, !DIExpression(), !2175)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2175
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2177
  %4 = add nuw nsw i64 %0, 1, !dbg !2178
    #dbg_value(i64 %4, !1988, !DIExpression(), !2179)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2180
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2171

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2181
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #8 !dbg !2182 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2185)
    #dbg_value(ptr @"internal/task$pack", !2184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2185)
    #dbg_value({ ptr, ptr } poison, !2184, !DIExpression(), !2186)
  tail call fastcc void @runtime.panicOrGoexit(), !dbg !2187
  unreachable, !dbg !2188
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #9 !dbg !2189 {
entry:
    #dbg_value(double %x, !2193, !DIExpression(), !2195)
    #dbg_value(double %y, !2194, !DIExpression(), !2195)
    #dbg_value(double %x, !2193, !DIExpression(), !2196)
    #dbg_value(double %y, !2194, !DIExpression(), !2197)
    #dbg_value(double %x, !2198, !DIExpression(), !2202)
    #dbg_value(double %y, !2201, !DIExpression(), !2202)
    #dbg_value(double %x, !2198, !DIExpression(), !2204)
    #dbg_value(double %y, !2201, !DIExpression(), !2205)
    #dbg_value(double %x, !2206, !DIExpression(), !2216)
    #dbg_value(double %y, !2211, !DIExpression(), !2216)
    #dbg_value(i64 9218868437227405313, !2212, !DIExpression(), !2216)
    #dbg_value(i64 9223372036854775807, !2213, !DIExpression(), !2216)
  %.cast.i.i = bitcast double %x to i64, !dbg !2218
    #dbg_value(i64 %.cast.i.i, !2214, !DIExpression(), !2219)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2220
    #dbg_value(i64 %.cast2.i.i, !2215, !DIExpression(), !2221)
    #dbg_value(i64 %.cast.i.i, !2214, !DIExpression(), !2222)
    #dbg_value(i64 9218868437227405313, !2212, !DIExpression(), !2223)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2224
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2225

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2215, !DIExpression(), !2226)
    #dbg_value(i64 9218868437227405313, !2212, !DIExpression(), !2227)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2228
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2225

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2214, !DIExpression(), !2229)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2230
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2225
    #dbg_value(i64 %.cast2.i.i, !2215, !DIExpression(), !2231)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2232
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2225
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2225
    #dbg_value(i64 %spec.select.i.i, !2214, !DIExpression(), !2233)
    #dbg_value(i64 %6, !2215, !DIExpression(), !2234)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2235
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2225
  br label %runtime.minimumFloat64.exit, !dbg !2225

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2236
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #9 !dbg !2237 {
entry:
    #dbg_value(float %x, !2241, !DIExpression(), !2243)
    #dbg_value(float %y, !2242, !DIExpression(), !2243)
    #dbg_value(float %x, !2241, !DIExpression(), !2244)
    #dbg_value(float %y, !2242, !DIExpression(), !2245)
    #dbg_value(float %x, !2246, !DIExpression(), !2250)
    #dbg_value(float %y, !2249, !DIExpression(), !2250)
    #dbg_value(float %x, !2246, !DIExpression(), !2252)
    #dbg_value(float %y, !2249, !DIExpression(), !2253)
    #dbg_value(float %x, !2254, !DIExpression(), !2264)
    #dbg_value(float %y, !2259, !DIExpression(), !2264)
    #dbg_value(i32 2139095041, !2260, !DIExpression(), !2264)
    #dbg_value(i32 2147483647, !2261, !DIExpression(), !2264)
  %.cast.i.i = bitcast float %x to i32, !dbg !2266
    #dbg_value(i32 %.cast.i.i, !2262, !DIExpression(), !2267)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2268
    #dbg_value(i32 %.cast2.i.i, !2263, !DIExpression(), !2269)
    #dbg_value(i32 %.cast.i.i, !2262, !DIExpression(), !2270)
    #dbg_value(i32 2139095041, !2260, !DIExpression(), !2271)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2272
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2273

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2263, !DIExpression(), !2274)
    #dbg_value(i32 2139095041, !2260, !DIExpression(), !2275)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2276
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2273

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2262, !DIExpression(), !2277)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2278
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2273
    #dbg_value(i32 %.cast2.i.i, !2263, !DIExpression(), !2279)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2280
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2273
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2273
    #dbg_value(i32 %spec.select.i.i, !2262, !DIExpression(), !2281)
    #dbg_value(i32 %6, !2263, !DIExpression(), !2282)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2283
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2273
  br label %runtime.minimumFloat32.exit, !dbg !2273

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #9 !dbg !2285 {
entry:
    #dbg_value(double %x, !2287, !DIExpression(), !2289)
    #dbg_value(double %y, !2288, !DIExpression(), !2289)
    #dbg_value(double %x, !2287, !DIExpression(), !2290)
    #dbg_value(double %y, !2288, !DIExpression(), !2291)
    #dbg_value(double %x, !2292, !DIExpression(), !2296)
    #dbg_value(double %y, !2295, !DIExpression(), !2296)
    #dbg_value(double %x, !2292, !DIExpression(), !2298)
    #dbg_value(double %y, !2295, !DIExpression(), !2299)
    #dbg_value(double %x, !2300, !DIExpression(), !2309)
    #dbg_value(double %y, !2303, !DIExpression(), !2309)
    #dbg_value(i64 9218868437227405313, !2304, !DIExpression(), !2309)
    #dbg_value(i64 9223372036854775807, !2305, !DIExpression(), !2309)
  %.cast.i.i = bitcast double %x to i64, !dbg !2311
    #dbg_value(i64 %.cast.i.i, !2306, !DIExpression(), !2312)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2313
    #dbg_value(i64 %.cast6.i.i, !2307, !DIExpression(), !2314)
    #dbg_value(i64 %.cast.i.i, !2306, !DIExpression(), !2315)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2316
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2317
    #dbg_value(i64 %.cast6.i.i, !2307, !DIExpression(), !2318)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2319
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2317
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2317
    #dbg_value(i64 9218868437227405313, !2304, !DIExpression(), !2320)
    #dbg_value(i64 -9218868437227405314, !2308, !DIExpression(), !2321)
    #dbg_value(i64 %spec.select.i.i, !2306, !DIExpression(), !2322)
    #dbg_value(i64 -9218868437227405314, !2308, !DIExpression(), !2323)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2324
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2317

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2307, !DIExpression(), !2325)
    #dbg_value(i64 -9218868437227405314, !2308, !DIExpression(), !2326)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2327
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2317

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2306, !DIExpression(), !2328)
    #dbg_value(i64 %4, !2307, !DIExpression(), !2329)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2330
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2317
  br label %runtime.maximumFloat64.exit, !dbg !2317

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2331
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #9 !dbg !2332 {
entry:
    #dbg_value(float %x, !2334, !DIExpression(), !2336)
    #dbg_value(float %y, !2335, !DIExpression(), !2336)
    #dbg_value(float %x, !2334, !DIExpression(), !2337)
    #dbg_value(float %y, !2335, !DIExpression(), !2338)
    #dbg_value(float %x, !2339, !DIExpression(), !2343)
    #dbg_value(float %y, !2342, !DIExpression(), !2343)
    #dbg_value(float %x, !2339, !DIExpression(), !2345)
    #dbg_value(float %y, !2342, !DIExpression(), !2346)
    #dbg_value(float %x, !2347, !DIExpression(), !2356)
    #dbg_value(float %y, !2350, !DIExpression(), !2356)
    #dbg_value(i32 2139095041, !2351, !DIExpression(), !2356)
    #dbg_value(i32 2147483647, !2352, !DIExpression(), !2356)
  %.cast.i.i = bitcast float %x to i32, !dbg !2358
    #dbg_value(i32 %.cast.i.i, !2353, !DIExpression(), !2359)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2360
    #dbg_value(i32 %.cast6.i.i, !2354, !DIExpression(), !2361)
    #dbg_value(i32 %.cast.i.i, !2353, !DIExpression(), !2362)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2363
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2364
    #dbg_value(i32 %.cast6.i.i, !2354, !DIExpression(), !2365)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2366
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2364
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2364
    #dbg_value(i32 2139095041, !2351, !DIExpression(), !2367)
    #dbg_value(i32 -2139095042, !2355, !DIExpression(), !2368)
    #dbg_value(i32 %spec.select.i.i, !2353, !DIExpression(), !2369)
    #dbg_value(i32 -2139095042, !2355, !DIExpression(), !2370)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2371
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2364

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2354, !DIExpression(), !2372)
    #dbg_value(i32 -2139095042, !2355, !DIExpression(), !2373)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2374
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2364

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2353, !DIExpression(), !2375)
    #dbg_value(i32 %4, !2354, !DIExpression(), !2376)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2377
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2364
  br label %runtime.maximumFloat32.exit, !dbg !2364

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2378
}

declare void @GC_init() local_unnamed_addr #0

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #1 !dbg !2379 {
entry:
  %0 = tail call ptr @tinygo_task_current() #13, !dbg !2380
    #dbg_value(ptr %0, !1881, !DIExpression(), !2394)
  %1 = icmp eq ptr %0, null, !dbg !2395
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2396

if.then.i.i.i:                                    ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2397
  unreachable, !dbg !2396

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !1881, !DIExpression(), !2398)
    #dbg_value(ptr %0, !2384, !DIExpression(), !2399)
    #dbg_value(ptr @"internal/task.gcState", !1923, !DIExpression(), !2400)
    #dbg_value(ptr @"internal/task.gcState", !1930, !DIExpression(), !2402)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2402
  %3 = icmp eq i32 %2, 0, !dbg !2404
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2405

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !2406)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1796, !DIExpression(), !2408)
    #dbg_value(i32 0, !1801, !DIExpression(), !2410)
    #dbg_value(i32 1, !1802, !DIExpression(), !2411)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1807, !DIExpression(), !2412)
    #dbg_value(i32 0, !1812, !DIExpression(), !2412)
    #dbg_value(i32 1, !1813, !DIExpression(), !2412)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2412
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2412
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", !dbg !2414

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i": ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !2415)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !2416)
    #dbg_value(i32 2, !1751, !DIExpression(), !2418)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !2419)
    #dbg_value(i32 2, !1762, !DIExpression(), !2419)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2419
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2421
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2414

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1790, !DIExpression(), !2422)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1825, !DIExpression(), !2423)
    #dbg_value(i32 2, !1830, !DIExpression(), !2425)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #13, !dbg !2426
    #dbg_value(ptr @"internal/task.activeTaskLock", !1744, !DIExpression(), !2416)
    #dbg_value(i32 2, !1751, !DIExpression(), !2418)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1755, !DIExpression(), !2419)
    #dbg_value(i32 2, !1762, !DIExpression(), !2419)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2419
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2421
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2414

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i.i", %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2427, !DIExpression(), !2431)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !2433)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1930, !DIExpression(), !2435)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2435
  %9 = icmp eq i32 %8, 0, !dbg !2437
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2438

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2427, !DIExpression(), !2439)
    #dbg_value(i32 %10, !2430, !DIExpression(), !2440)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1825, !DIExpression(), !2441)
    #dbg_value(i32 %10, !1830, !DIExpression(), !2443)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #13, !dbg !2444
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !2433)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1930, !DIExpression(), !2435)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2435
    #dbg_value(i32 %11, !2430, !DIExpression(), !2445)
  %12 = icmp eq i32 %11, 0, !dbg !2437
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2438

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2446, !DIExpression(), !2450)
    #dbg_value(i32 1, !2449, !DIExpression(), !2452)
    #dbg_value(ptr @"internal/task.gcState", !2453, !DIExpression(), !2457)
    #dbg_value(i32 1, !2456, !DIExpression(), !2457)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2457
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2459
    #dbg_value(i32 %13, !2385, !DIExpression(), !2459)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2460
    #dbg_value(%"internal/task.Semaphore" poison, !2386, !DIExpression(), !2460)
    #dbg_value(ptr poison, !2387, !DIExpression(), !2461)
    #dbg_value(ptr poison, !2388, !DIExpression(), !2462)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2463
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2464
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2405

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2388, !DIExpression(), !2465)
    #dbg_value(ptr %0, !2384, !DIExpression(), !2466)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2467
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2405

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2388, !DIExpression(), !2468)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2469
  %17 = load ptr, ptr %16, align 8, !dbg !2469
  tail call void @tinygo_task_send_gc_signal(ptr %17) #13, !dbg !2470
  br label %deref.next15.i.i, !dbg !2405

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2388, !DIExpression(), !2471)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2472
    #dbg_value(ptr poison, !2388, !DIExpression(), !2473)
  %19 = load ptr, ptr %18, align 8, !dbg !2463
    #dbg_value(ptr %19, !2388, !DIExpression(), !2474)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2464
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2405

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2427, !DIExpression(), !2475)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !2477)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1930, !DIExpression(), !2479)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2479
  %21 = icmp eq i32 %20, 0, !dbg !2481
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2482

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2427, !DIExpression(), !2483)
    #dbg_value(i32 %22, !2430, !DIExpression(), !2484)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1825, !DIExpression(), !2485)
    #dbg_value(i32 %22, !1830, !DIExpression(), !2487)
  tail call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #13, !dbg !2488
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !2477)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1930, !DIExpression(), !2479)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2479
    #dbg_value(i32 %23, !2430, !DIExpression(), !2489)
  %24 = icmp eq i32 %23, 0, !dbg !2481
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2482

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2387, !DIExpression(), !2490)
    #dbg_value(ptr poison, !2389, !DIExpression(), !2491)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2492
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2493
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2405

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2389, !DIExpression(), !2494)
    #dbg_value(ptr %0, !2384, !DIExpression(), !2495)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2496
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2405

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2389, !DIExpression(), !2497)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2498
  %28 = load i64, ptr %27, align 8, !dbg !2498
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2499
  %30 = load i64, ptr %29, align 8, !dbg !2499
    #dbg_value(i64 %28, !2500, !DIExpression(), !2506)
    #dbg_value(i64 %30, !2505, !DIExpression(), !2508)
  tail call void @GC_push_all(i64 %28, i64 %30) #13, !dbg !2509
  br label %deref.next33.i.i, !dbg !2405

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2389, !DIExpression(), !2510)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !2511
    #dbg_value(ptr poison, !2389, !DIExpression(), !2512)
  %32 = load ptr, ptr %31, align 8, !dbg !2492
    #dbg_value(ptr %32, !2389, !DIExpression(), !2513)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2493
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2405

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  tail call void @tinygo_scanCurrentStack() #13, !dbg !2514
    #dbg_value(ptr undef, !2515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2547)
    #dbg_value(ptr poison, !2515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2547)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2551)
    #dbg_value(i64 0, !2522, !DIExpression(), !2552)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2553
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !2554
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !2555

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !2556
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !2521, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2551)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !2557
    #dbg_value(i64 %35, !2521, !DIExpression(), !2551)
  %36 = inttoptr i64 %35 to ptr, !dbg !2558
    #dbg_value(ptr %36, !2521, !DIExpression(), !2551)
  br label %if.then.i.i.i.i, !dbg !2559

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i16 [ %51, %if.done.i.i.i.i ], [ %33, %if.then.preheader.i.i.i.i ]
  %38 = phi i64 [ %55, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %39 = phi ptr [ %54, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %38, !2522, !DIExpression(), !2560)
    #dbg_value(ptr %39, !2521, !DIExpression(), !2561)
    #dbg_value(ptr %39, !2523, !DIExpression(), !2562)
  %40 = icmp eq ptr %39, null, !dbg !2559
  br i1 %40, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !2559

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %41 = load i32, ptr %39, align 4, !dbg !2559
  %42 = icmp eq i32 %41, 1, !dbg !2563
  br i1 %42, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !2555

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %39, !2523, !DIExpression(), !2564)
  %43 = getelementptr inbounds nuw i8, ptr %39, i64 4, !dbg !2565
  %44 = load i32, ptr %43, align 4, !dbg !2565
  %45 = and i32 %44, 2, !dbg !2566
  %.not.i.i.i.i = icmp eq i32 %45, 0, !dbg !2567
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !2555

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %39, !2523, !DIExpression(), !2568)
  %46 = getelementptr inbounds nuw i8, ptr %39, i64 16, !dbg !2569
  %47 = load i64, ptr %46, align 8, !dbg !2569
    #dbg_value({ ptr, ptr } poison, !2515, !DIExpression(), !2570)
    #dbg_value(i64 %47, !2536, !DIExpression(), !2571)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2572)
  %48 = getelementptr inbounds nuw i8, ptr %39, i64 40, !dbg !2573
  %49 = load i64, ptr %48, align 8, !dbg !2573
    #dbg_value(!DIArgList(i64 %47, i64 %49), !2537, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2572)
  %50 = add i64 %49, %47, !dbg !2574
    #dbg_value(i64 %50, !2537, !DIExpression(), !2572)
    #dbg_value(i64 %47, !2500, !DIExpression(), !2575)
    #dbg_value(i64 %50, !2505, !DIExpression(), !2577)
  tail call void @GC_push_all(i64 %47, i64 %50) #13, !dbg !2578
  %.pre.i.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2553
  br label %if.done.i.i.i.i, !dbg !2555

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
  %51 = phi i16 [ %.pre.i.i.i.i, %deref.next7.i.i.i.i ], [ %37, %deref.next5.i.i.i.i ], [ %37, %deref.next.i.i.i.i ], !dbg !2553
    #dbg_value(ptr %39, !2521, !DIExpression(), !2579)
  %52 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !2580
  %53 = sext i16 %52 to i64, !dbg !2581
  %54 = getelementptr i8, ptr %39, i64 %53, !dbg !2581
    #dbg_value(ptr %54, !2521, !DIExpression(), !2582)
  %55 = add nuw nsw i64 %38, 1, !dbg !2583
    #dbg_value(i64 %55, !2522, !DIExpression(), !2560)
  %56 = zext i16 %51 to i64, !dbg !2584
  %57 = icmp samesign ult i64 %55, %56, !dbg !2554
  br i1 %57, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !2555

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  tail call fastcc void @runtime.nilPanic(), !dbg !2559
  unreachable, !dbg !2559

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !2585
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #1 !dbg !2586 {
entry:
    #dbg_value(i64 %sp, !2589, !DIExpression(), !2590)
    #dbg_value(i64 %sp, !2589, !DIExpression(), !2591)
  %0 = tail call ptr @tinygo_task_current() #13, !dbg !2592
    #dbg_value(ptr %0, !1881, !DIExpression(), !2596)
    #dbg_value(ptr %0, !1881, !DIExpression(), !2597)
  %1 = icmp eq ptr %0, null, !dbg !2598
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !2599

if.then.i.i:                                      ; preds = %entry
  tail call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2600
  unreachable, !dbg !2599

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !1881, !DIExpression(), !2601)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2602
  %3 = load i64, ptr %2, align 8, !dbg !2602
    #dbg_value(i64 %sp, !2500, !DIExpression(), !2603)
    #dbg_value(i64 %3, !2505, !DIExpression(), !2603)
    #dbg_value(i64 %sp, !2500, !DIExpression(), !2605)
    #dbg_value(i64 %3, !2505, !DIExpression(), !2606)
  tail call void @GC_push_all(i64 %sp, i64 %3) #13, !dbg !2607
  ret void, !dbg !2608
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.divideByZeroPanic() unnamed_addr #2 !dbg !2609 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0), !dbg !2610
  tail call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.25", i64 14), !dbg !2611
  unreachable, !dbg !2612
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #1 !dbg !2613 {
entry:
    #dbg_value(i32 %argc, !2617, !DIExpression(), !2622)
    #dbg_value(ptr %argv, !2618, !DIExpression(), !2622)
    #dbg_value(i32 %argc, !2617, !DIExpression(), !2623)
    #dbg_value(i32 %argc, !2619, !DIExpression(), !2624)
    #dbg_value(ptr %argv, !2618, !DIExpression(), !2625)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !2626
    #dbg_value(ptr %argv, !2620, !DIExpression(), !2626)
  tail call void @tinygo_register_fatal_signals() #13, !dbg !2627
  %0 = tail call ptr @llvm.stacksave.p0(), !dbg !2628
  %1 = ptrtoint ptr %0 to i64, !dbg !2633
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !2634
    #dbg_value(i64 %1, !2621, !DIExpression(), !2634)
  tail call fastcc void @runtime.runMain(), !dbg !2635
  ret i64 0, !dbg !2636
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #10 !dbg !2637 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !2638
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2638
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2638
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #13, !dbg !2654
    #dbg_value(i32 %0, !2641, !DIExpression(), !2655)
    #dbg_value(i32 %0, !2641, !DIExpression(), !2656)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2657
    #dbg_value(i64 poison, !2646, !DIExpression(), !2658)
    #dbg_value(i64 poison, !2646, !DIExpression(), !2659)
    #dbg_value(i64 poison, !2647, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2660)
    #dbg_value(i64 poison, !2647, !DIExpression(), !2661)
    #dbg_value(i64 poison, !2648, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2662)
  tail call void @GC_init() #13, !dbg !2663
  tail call void @tinygo_runtime_bdwgc_init() #13, !dbg !2666
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !2667
    #dbg_value(i64 %1, !2652, !DIExpression(), !2667)
    #dbg_value(i64 %1, !2668, !DIExpression(), !2672)
    #dbg_value(i64 %1, !2668, !DIExpression(), !2674)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !2675
    #dbg_value(i64 %1, !2671, !DIExpression(), !2675)
  tail call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #13, !dbg !2676
  tail call void @main.main(ptr undef) #13, !dbg !2677
  ret void, !dbg !2678
}

declare void @main.main(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #1 !dbg !2679 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !2685
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !2688
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !2691
    #dbg_value(i64 %60, !2697, !DIExpression(), !2713)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !2714
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !2715
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !2717
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !2720
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !2723
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !2726
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !2729
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !2732
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !2735
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2738
    #dbg_value(i32 %sig, !2683, !DIExpression(), !2741)
    #dbg_value(i64 %addr, !2684, !DIExpression(), !2742)
  %.not = icmp eq i64 %addr, 0, !dbg !2743
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !2744

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !1988, !DIExpression(), !2745)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2746)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !2747
  %2 = load i8, ptr %1, align 1, !dbg !2747
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2748
    #dbg_value(i8 %2, !1995, !DIExpression(), !2748)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2748
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #13, !dbg !2749
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2750
  %4 = add nuw nsw i64 %0, 1, !dbg !2751
    #dbg_value(i64 %4, !1988, !DIExpression(), !2752)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !2753
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2754

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !2684, !DIExpression(), !2755)
  tail call fastcc void @runtime.printptr(i64 %addr), !dbg !2756
  br label %if.done2, !dbg !2744

if.done2:                                         ; preds = %for.body.i47, %runtime.printstring.exit
    #dbg_value(ptr poison, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2757)
    #dbg_value(i64 16, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2757)
    #dbg_value(i64 0, !1988, !DIExpression(), !2758)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2759)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 58, !1995, !DIExpression(), !2760)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 1, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 32, !1995, !DIExpression(), !2760)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 2, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 99, !1995, !DIExpression(), !2760)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 3, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 97, !1995, !DIExpression(), !2760)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 4, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 117, !1995, !DIExpression(), !2760)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 5, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 103, !1995, !DIExpression(), !2760)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 6, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 104, !1995, !DIExpression(), !2760)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 7, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 116, !1995, !DIExpression(), !2760)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 8, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 32, !1995, !DIExpression(), !2760)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 9, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 115, !1995, !DIExpression(), !2760)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 10, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 105, !1995, !DIExpression(), !2760)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 11, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 103, !1995, !DIExpression(), !2760)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 12, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 110, !1995, !DIExpression(), !2760)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 13, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 97, !1995, !DIExpression(), !2760)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 14, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 108, !1995, !DIExpression(), !2760)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 15, !1988, !DIExpression(), !2763)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2760
    #dbg_value(i8 32, !1995, !DIExpression(), !2760)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2760
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #13, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2762
    #dbg_value(i64 16, !1988, !DIExpression(), !2763)
    #dbg_value(i32 %sig, !2683, !DIExpression(), !2764)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2765
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2765
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !2744

switch.body:                                      ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2770)
    #dbg_value(ptr @runtime.printLock, !1796, !DIExpression(), !2773)
    #dbg_value(i32 0, !1801, !DIExpression(), !2775)
    #dbg_value(i32 1, !1802, !DIExpression(), !2776)
    #dbg_value(ptr @runtime.printLock, !1807, !DIExpression(), !2777)
    #dbg_value(i32 0, !1812, !DIExpression(), !2777)
    #dbg_value(i32 1, !1813, !DIExpression(), !2777)
  br i1 %22, label %runtime.printlock.exit, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i", !dbg !2779

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i":  ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2780)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2781)
    #dbg_value(i32 2, !1751, !DIExpression(), !2783)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2784)
    #dbg_value(i32 2, !1762, !DIExpression(), !2784)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2784
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !2786
  br i1 %.not4.i.i, label %runtime.printlock.exit, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2779

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i", %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2787)
    #dbg_value(ptr @runtime.printLock, !1825, !DIExpression(), !2788)
    #dbg_value(i32 2, !1830, !DIExpression(), !2790)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #13, !dbg !2791
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2781)
    #dbg_value(i32 2, !1751, !DIExpression(), !2783)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2784)
    #dbg_value(i32 2, !1762, !DIExpression(), !2784)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2784
  %.not.i.i = icmp eq i32 %24, 0, !dbg !2786
  br i1 %.not.i.i, label %runtime.printlock.exit, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2779

runtime.printlock.exit:                           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i", %switch.body, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i"
    #dbg_value(ptr poison, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2792)
    #dbg_value(i64 6, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2792)
    #dbg_value(i64 0, !1988, !DIExpression(), !2793)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2794)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2795
    #dbg_value(i8 83, !1995, !DIExpression(), !2795)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2795
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2797
    #dbg_value(i64 1, !1988, !DIExpression(), !2798)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2795
    #dbg_value(i8 73, !1995, !DIExpression(), !2795)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !2795
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2797
    #dbg_value(i64 2, !1988, !DIExpression(), !2798)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2795
    #dbg_value(i8 71, !1995, !DIExpression(), !2795)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !2795
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2797
    #dbg_value(i64 3, !1988, !DIExpression(), !2798)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2795
    #dbg_value(i8 66, !1995, !DIExpression(), !2795)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !2795
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2797
    #dbg_value(i64 4, !1988, !DIExpression(), !2798)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2795
    #dbg_value(i8 85, !1995, !DIExpression(), !2795)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !2795
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2797
    #dbg_value(i64 5, !1988, !DIExpression(), !2798)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2795
    #dbg_value(i8 83, !1995, !DIExpression(), !2795)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2795
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #13, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2797
    #dbg_value(i64 6, !1988, !DIExpression(), !2798)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2799
    #dbg_value(i8 10, !1995, !DIExpression(), !2799)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !2799
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #13, !dbg !2800
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2801
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2802)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2806)
    #dbg_value(i32 0, !1751, !DIExpression(), !2808)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2809)
    #dbg_value(i32 0, !1762, !DIExpression(), !2809)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2809
    #dbg_value(i32 %32, !1741, !DIExpression(), !2811)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %switch.done.sink.split
  ], !dbg !2812

if.then.i.i:                                      ; preds = %runtime.printlock.exit
  tail call fastcc void @runtime._panic(), !dbg !2813
  unreachable, !dbg !2813

switch.done.sink.split:                           ; preds = %runtime.printlock.exit, %runtime.printint32.exit, %runtime.printlock.exit27, %runtime.printlock.exit14
  tail call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #13, !dbg !2814
  br label %switch.done, !dbg !2817

switch.done:                                      ; preds = %switch.done.sink.split, %runtime.printint32.exit, %runtime.printlock.exit27, %runtime.printlock.exit14, %runtime.printlock.exit
    #dbg_value(i32 %sig, !2683, !DIExpression(), !2818)
  tail call void @raise(i32 %sig) #13, !dbg !2817
  ret void, !dbg !2819

switch.body3:                                     ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2820)
    #dbg_value(ptr @runtime.printLock, !1796, !DIExpression(), !2823)
    #dbg_value(i32 0, !1801, !DIExpression(), !2825)
    #dbg_value(i32 1, !1802, !DIExpression(), !2826)
    #dbg_value(ptr @runtime.printLock, !1807, !DIExpression(), !2827)
    #dbg_value(i32 0, !1812, !DIExpression(), !2827)
    #dbg_value(i32 1, !1813, !DIExpression(), !2827)
  br i1 %22, label %runtime.printlock.exit14, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10", !dbg !2829

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10": ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2830)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2831)
    #dbg_value(i32 2, !1751, !DIExpression(), !2833)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2834)
    #dbg_value(i32 2, !1762, !DIExpression(), !2834)
  %33 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2834
  %.not4.i.i11 = icmp eq i32 %33, 0, !dbg !2836
  br i1 %.not4.i.i11, label %runtime.printlock.exit14, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2829

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10", %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2837)
    #dbg_value(ptr @runtime.printLock, !1825, !DIExpression(), !2838)
    #dbg_value(i32 2, !1830, !DIExpression(), !2840)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #13, !dbg !2841
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2831)
    #dbg_value(i32 2, !1751, !DIExpression(), !2833)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2834)
    #dbg_value(i32 2, !1762, !DIExpression(), !2834)
  %34 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2834
  %.not.i.i13 = icmp eq i32 %34, 0, !dbg !2836
  br i1 %.not.i.i13, label %runtime.printlock.exit14, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2829

runtime.printlock.exit14:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i12", %switch.body3, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i10"
    #dbg_value(ptr poison, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2842)
    #dbg_value(i64 6, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2842)
    #dbg_value(i64 0, !1988, !DIExpression(), !2843)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2844)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2845
    #dbg_value(i8 83, !1995, !DIExpression(), !2845)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !2845
  %35 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2846
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2847
    #dbg_value(i64 1, !1988, !DIExpression(), !2848)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2845
    #dbg_value(i8 73, !1995, !DIExpression(), !2845)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !2845
  %36 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2846
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2847
    #dbg_value(i64 2, !1988, !DIExpression(), !2848)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2845
    #dbg_value(i8 71, !1995, !DIExpression(), !2845)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !2845
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2846
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2847
    #dbg_value(i64 3, !1988, !DIExpression(), !2848)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2845
    #dbg_value(i8 73, !1995, !DIExpression(), !2845)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !2845
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2846
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2847
    #dbg_value(i64 4, !1988, !DIExpression(), !2848)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2845
    #dbg_value(i8 76, !1995, !DIExpression(), !2845)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !2845
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2846
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2847
    #dbg_value(i64 5, !1988, !DIExpression(), !2848)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2845
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !2845
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #13, !dbg !2846
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !2847
    #dbg_value(i64 6, !1988, !DIExpression(), !2848)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !2849
    #dbg_value(i8 10, !1995, !DIExpression(), !2849)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !2849
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #13, !dbg !2850
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !2851
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2852)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2855)
    #dbg_value(i32 0, !1751, !DIExpression(), !2857)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2858)
    #dbg_value(i32 0, !1762, !DIExpression(), !2858)
  %42 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2858
    #dbg_value(i32 %42, !1741, !DIExpression(), !2860)
  switch i32 %42, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %switch.done.sink.split
  ], !dbg !2861

if.then.i.i21:                                    ; preds = %runtime.printlock.exit14
  tail call fastcc void @runtime._panic(), !dbg !2862
  unreachable, !dbg !2862

switch.body5:                                     ; preds = %if.done2
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2863)
    #dbg_value(ptr @runtime.printLock, !1796, !DIExpression(), !2866)
    #dbg_value(i32 0, !1801, !DIExpression(), !2868)
    #dbg_value(i32 1, !1802, !DIExpression(), !2869)
    #dbg_value(ptr @runtime.printLock, !1807, !DIExpression(), !2870)
    #dbg_value(i32 0, !1812, !DIExpression(), !2870)
    #dbg_value(i32 1, !1813, !DIExpression(), !2870)
  br i1 %22, label %runtime.printlock.exit27, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23", !dbg !2872

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23": ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2873)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2874)
    #dbg_value(i32 2, !1751, !DIExpression(), !2876)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2877)
    #dbg_value(i32 2, !1762, !DIExpression(), !2877)
  %43 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2877
  %.not4.i.i24 = icmp eq i32 %43, 0, !dbg !2879
  br i1 %.not4.i.i24, label %runtime.printlock.exit27, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !2872

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23", %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2880)
    #dbg_value(ptr @runtime.printLock, !1825, !DIExpression(), !2881)
    #dbg_value(i32 2, !1830, !DIExpression(), !2883)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #13, !dbg !2884
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2874)
    #dbg_value(i32 2, !1751, !DIExpression(), !2876)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2877)
    #dbg_value(i32 2, !1762, !DIExpression(), !2877)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2877
  %.not.i.i26 = icmp eq i32 %44, 0, !dbg !2879
  br i1 %.not.i.i26, label %runtime.printlock.exit27, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !2872

runtime.printlock.exit27:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i25", %switch.body5, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i23"
    #dbg_value(ptr poison, !1987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2885)
    #dbg_value(i64 7, !1987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2885)
    #dbg_value(i64 0, !1988, !DIExpression(), !2886)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2887)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2888
    #dbg_value(i8 83, !1995, !DIExpression(), !2888)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !2888
  %45 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2890
    #dbg_value(i64 1, !1988, !DIExpression(), !2891)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2888
    #dbg_value(i8 73, !1995, !DIExpression(), !2888)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !2888
  %46 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2890
    #dbg_value(i64 2, !1988, !DIExpression(), !2891)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2888
    #dbg_value(i8 71, !1995, !DIExpression(), !2888)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !2888
  %47 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2890
    #dbg_value(i64 3, !1988, !DIExpression(), !2891)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2888
    #dbg_value(i8 83, !1995, !DIExpression(), !2888)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !2888
  %48 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2890
    #dbg_value(i64 4, !1988, !DIExpression(), !2891)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2888
    #dbg_value(i8 69, !1995, !DIExpression(), !2888)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !2888
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2890
    #dbg_value(i64 5, !1988, !DIExpression(), !2891)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2888
    #dbg_value(i8 71, !1995, !DIExpression(), !2888)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !2888
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2890
    #dbg_value(i64 6, !1988, !DIExpression(), !2891)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2888
    #dbg_value(i8 86, !1995, !DIExpression(), !2888)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !2888
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #13, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !2890
    #dbg_value(i64 7, !1988, !DIExpression(), !2891)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !2892
    #dbg_value(i8 10, !1995, !DIExpression(), !2892)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !2892
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #13, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !2894
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2895)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2898)
    #dbg_value(i32 0, !1751, !DIExpression(), !2900)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2901)
    #dbg_value(i32 0, !1762, !DIExpression(), !2901)
  %53 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2901
    #dbg_value(i32 %53, !1741, !DIExpression(), !2903)
  switch i32 %53, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %switch.done.sink.split
  ], !dbg !2904

if.then.i.i34:                                    ; preds = %runtime.printlock.exit27
  tail call fastcc void @runtime._panic(), !dbg !2905
  unreachable, !dbg !2905

switch.next6:                                     ; preds = %if.done2
    #dbg_value(i32 %sig, !2683, !DIExpression(), !2906)
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2907)
    #dbg_value(ptr @runtime.printLock, !1796, !DIExpression(), !2910)
    #dbg_value(i32 0, !1801, !DIExpression(), !2912)
    #dbg_value(i32 1, !1802, !DIExpression(), !2913)
    #dbg_value(ptr @runtime.printLock, !1807, !DIExpression(), !2914)
    #dbg_value(i32 0, !1812, !DIExpression(), !2914)
    #dbg_value(i32 1, !1813, !DIExpression(), !2914)
  br i1 %22, label %runtime.printlock.exit40, label %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36", !dbg !2916

"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36": ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2917)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2918)
    #dbg_value(i32 2, !1751, !DIExpression(), !2920)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2921)
    #dbg_value(i32 2, !1762, !DIExpression(), !2921)
  %54 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2921
  %.not4.i.i37 = icmp eq i32 %54, 0, !dbg !2923
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !2916

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36", %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !1790, !DIExpression(), !2924)
    #dbg_value(ptr @runtime.printLock, !1825, !DIExpression(), !2925)
    #dbg_value(i32 2, !1830, !DIExpression(), !2927)
  tail call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #13, !dbg !2928
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2918)
    #dbg_value(i32 2, !1751, !DIExpression(), !2920)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2921)
    #dbg_value(i32 2, !1762, !DIExpression(), !2921)
  %55 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2921
  %.not.i.i39 = icmp eq i32 %55, 0, !dbg !2923
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !2916

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %"(*sync/atomic.Uint32).Swap.exit.preheader.i.i36"
    #dbg_value(i32 %sig, !2711, !DIExpression(), !2929)
  %56 = icmp slt i32 %sig, 0, !dbg !2930
  br i1 %56, label %if.then.i, label %if.done.i, !dbg !2931

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !2932
    #dbg_value(i8 45, !1995, !DIExpression(), !2932)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !2932
  %57 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #13, !dbg !2933
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !2934
    #dbg_value(i32 %sig, !2711, !DIExpression(), !2935)
  %58 = sub i32 0, %sig, !dbg !2936
    #dbg_value(i32 %58, !2711, !DIExpression(), !2937)
  br label %if.done.i, !dbg !2931

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %59 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %58, %if.then.i ], !dbg !2938
    #dbg_value(i32 %59, !2711, !DIExpression(), !2939)
    #dbg_value(i32 %59, !2707, !DIExpression(), !2940)
  %60 = zext i32 %59 to i64, !dbg !2941
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2714
    #dbg_value(i64 19, !2698, !DIExpression(), !2942)
    #dbg_value(i64 19, !2699, !DIExpression(), !2943)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !2714
  br label %for.body.i.i.i, !dbg !2944

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !2701, !DIExpression(), !2945)
  %61 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !2946
  br i1 %61, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !2944

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %62 = phi i64 [ 19, %if.done.i ], [ %70, %for.body.i.i.i ]
  %63 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %64 = phi i64 [ %60, %if.done.i ], [ %69, %for.body.i.i.i ]
    #dbg_value(i64 %62, !2699, !DIExpression(), !2947)
    #dbg_value(i64 %64, !2697, !DIExpression(), !2948)
  %65 = urem i64 %64, 10, !dbg !2949
  %66 = trunc nuw nsw i64 %65 to i8, !dbg !2950
  %67 = or disjoint i8 %66, 48, !dbg !2950
    #dbg_value(i8 %67, !2700, !DIExpression(), !2951)
  %68 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %62, !dbg !2952
  store i8 %67, ptr %68, align 1, !dbg !2952
  %.not.i.i.i = icmp eq i64 %65, 0, !dbg !2953
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %63, i64 %62, !dbg !2944
  %69 = udiv i64 %64, 10, !dbg !2954
    #dbg_value(i64 %69, !2697, !DIExpression(), !2954)
  %70 = add nsw i64 %62, -1, !dbg !2955
    #dbg_value(i64 %70, !2699, !DIExpression(), !2947)
  %.not23.i.i.i = icmp eq i64 %62, 0, !dbg !2956
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !2944

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %71 = phi i64 [ %75, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %71, !2701, !DIExpression(), !2957)
  %72 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %71, !dbg !2958
  %73 = load i8, ptr %72, align 1, !dbg !2958
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !2959
    #dbg_value(i8 %73, !1995, !DIExpression(), !2959)
  store i8 %73, ptr %stackalloc.i.i.i.i, align 1, !dbg !2959
  %74 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #13, !dbg !2960
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !2961
  %75 = add i64 %71, 1, !dbg !2962
    #dbg_value(i64 %75, !2701, !DIExpression(), !2945)
  %exitcond.not.i.i.i = icmp eq i64 %75, 20, !dbg !2946
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !2944

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2963
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !2964
    #dbg_value(i8 10, !1995, !DIExpression(), !2964)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !2964
  %76 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #13, !dbg !2965
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !2966
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2967)
    #dbg_value(ptr @runtime.printLock, !1744, !DIExpression(), !2970)
    #dbg_value(i32 0, !1751, !DIExpression(), !2972)
    #dbg_value(ptr @runtime.printLock, !1755, !DIExpression(), !2973)
    #dbg_value(i32 0, !1762, !DIExpression(), !2973)
  %77 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2973
    #dbg_value(i32 %77, !1741, !DIExpression(), !2975)
  switch i32 %77, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %switch.done.sink.split
  ], !dbg !2976

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  tail call fastcc void @runtime._panic(), !dbg !2977
  unreachable, !dbg !2977

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %78 = phi i64 [ %82, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %78, !1988, !DIExpression(), !2978)
    #dbg_value(%runtime._string poison, !1987, !DIExpression(), !2979)
  %79 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %78, !dbg !2980
  %80 = load i8, ptr %79, align 1, !dbg !2980
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !2981
    #dbg_value(i8 %80, !1995, !DIExpression(), !2981)
  store i8 %80, ptr %stackalloc.i.i46, align 1, !dbg !2981
  %81 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #13, !dbg !2982
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !2983
  %82 = add nuw nsw i64 %78, 1, !dbg !2984
    #dbg_value(i64 %82, !1988, !DIExpression(), !2985)
  %exitcond.not.i48 = icmp eq i64 %82, 20, !dbg !2986
  br i1 %exitcond.not.i48, label %if.done2, label %for.body.i47, !dbg !2987
}

declare void @raise(i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #1 !dbg !2988 {
entry:
    #dbg_value(i32 %s, !2990, !DIExpression(), !2994)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !2995

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !2990, !DIExpression(), !2996)
    #dbg_value(i32 %shift.result, !2991, !DIExpression(), !2997)
    #dbg_value(ptr @runtime.receivedSignals, !1923, !DIExpression(), !2998)
    #dbg_value(ptr @runtime.receivedSignals, !1923, !DIExpression(), !3000)
    #dbg_value(ptr @runtime.receivedSignals, !1930, !DIExpression(), !3001)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !3001
    #dbg_value(i32 %1, !2992, !DIExpression(), !3003)
    #dbg_value(i32 %1, !2992, !DIExpression(), !3004)
    #dbg_value(i32 %1, !2992, !DIExpression(), !3005)
    #dbg_value(i32 %shift.result, !2991, !DIExpression(), !3006)
  %2 = or i32 %1, %shift.result, !dbg !3007
    #dbg_value(ptr @runtime.receivedSignals, !1796, !DIExpression(), !3008)
    #dbg_value(i32 %1, !1801, !DIExpression(), !3008)
    #dbg_value(i32 %2, !1802, !DIExpression(), !3008)
    #dbg_value(ptr @runtime.receivedSignals, !1796, !DIExpression(), !3010)
    #dbg_value(i32 %1, !1801, !DIExpression(), !3011)
    #dbg_value(i32 %2, !1802, !DIExpression(), !3012)
    #dbg_value(ptr @runtime.receivedSignals, !1807, !DIExpression(), !3013)
    #dbg_value(i32 %1, !1812, !DIExpression(), !3013)
    #dbg_value(i32 %2, !1813, !DIExpression(), !3013)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3013
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3013
    #dbg_value(i1 %4, !2993, !DIExpression(), !3015)
    #dbg_value(i1 %4, !2993, !DIExpression(), !3016)
  br i1 %4, label %if.then, label %for.body, !dbg !2995

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !1744, !DIExpression(), !3017)
    #dbg_value(i32 1, !1751, !DIExpression(), !3017)
    #dbg_value(ptr @runtime.signalFutex, !1744, !DIExpression(), !3019)
    #dbg_value(i32 1, !1751, !DIExpression(), !3020)
    #dbg_value(ptr @runtime.signalFutex, !1755, !DIExpression(), !3021)
    #dbg_value(i32 1, !1762, !DIExpression(), !3021)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3021
  %6 = icmp eq i32 %5, 0, !dbg !3023
  br i1 %6, label %if.then1, label %if.done, !dbg !2995

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !1917, !DIExpression(), !3024)
    #dbg_value(ptr @runtime.signalFutex, !1917, !DIExpression(), !3026)
  tail call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #13, !dbg !3027
  br label %if.done, !dbg !2995

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3028
}

; Function Attrs: nofree nounwind uwtable(sync)
define i64 @f_gold(ptr nocapture readonly %A.data, i64 %A.len, i64 %A.cap, i64 %N, i64 %M) local_unnamed_addr #4 !dbg !3029 {
entry:
    #dbg_value(ptr %A.data, !3038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3046)
    #dbg_value(i64 %A.len, !3038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3046)
    #dbg_value(i64 %A.cap, !3038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3046)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %M, !3040, !DIExpression(), !3046)
    #dbg_value(i64 0, !3041, !DIExpression(), !3047)
    #dbg_value(i64 0, !3042, !DIExpression(), !3048)
    #dbg_value(i64 0, !3043, !DIExpression(), !3049)
  %0 = icmp sgt i64 %N, 0, !dbg !3050
  br i1 %0, label %for.loop1.preheader.lr.ph, label %for.done6, !dbg !3051

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = icmp eq i64 %M, 0
  %2 = icmp eq i64 %M, -1
  br label %for.loop1.preheader, !dbg !3051

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done5
  %3 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %5, %for.done5 ]
  %4 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa13, %for.done5 ]
    #dbg_value(i64 %3, !3043, !DIExpression(), !3052)
  %5 = add nuw nsw i64 %3, 1, !dbg !3053
  %6 = icmp slt i64 %5, %N, !dbg !3054
  br i1 %6, label %for.body2.lr.ph, label %for.done5, !dbg !3051

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %3, %A.len
  %7 = getelementptr inbounds nuw i64, ptr %A.data, i64 %3
  br label %for.body2, !dbg !3051

for.loop1.loopexit:                               ; preds = %divbyzero.next, %for.body2
  %.lcssa = phi i64 [ %10, %for.body2 ], [ %spec.select, %divbyzero.next ], !dbg !3048
  %8 = add nuw nsw i64 %9, 1, !dbg !3053
    #dbg_value(i64 %8, !3044, !DIExpression(), !3055)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3056)
  %exitcond.not = icmp eq i64 %8, %N, !dbg !3054
  br i1 %exitcond.not, label %for.done5, label %for.body2, !dbg !3051

for.body2:                                        ; preds = %for.body2.lr.ph, %for.loop1.loopexit
  %9 = phi i64 [ %5, %for.body2.lr.ph ], [ %8, %for.loop1.loopexit ]
  %.in23 = phi i64 [ %3, %for.body2.lr.ph ], [ %9, %for.loop1.loopexit ]
  %10 = phi i64 [ %4, %for.body2.lr.ph ], [ %.lcssa, %for.loop1.loopexit ]
    #dbg_value(i64 %9, !3044, !DIExpression(), !3057)
  %11 = add nuw i64 %.in23, 2, !dbg !3058
    #dbg_value(i64 %11, !3045, !DIExpression(), !3059)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3060)
  %12 = icmp slt i64 %11, %N, !dbg !3061
  br i1 %12, label %for.body4.lr.ph, label %for.loop1.loopexit, !dbg !3051

for.body4.lr.ph:                                  ; preds = %for.body2
  %13 = getelementptr inbounds nuw i64, ptr %A.data, i64 %9
  br i1 %.not, label %for.body4.lr.ph.split, label %lookup.throw, !dbg !3062

for.body4.lr.ph.split:                            ; preds = %for.body4.lr.ph
  %.not3 = icmp ult i64 %9, %A.len
  br i1 %.not3, label %for.body4, label %lookup.throw9, !dbg !3063

for.body4:                                        ; preds = %for.body4.lr.ph.split, %divbyzero.next
  %14 = phi i64 [ %28, %divbyzero.next ], [ %11, %for.body4.lr.ph.split ]
  %15 = phi i64 [ %spec.select, %divbyzero.next ], [ %10, %for.body4.lr.ph.split ]
    #dbg_value(i64 %3, !3043, !DIExpression(), !3064)
    #dbg_value(i64 %9, !3044, !DIExpression(), !3065)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3066)
    #dbg_value(i64 %14, !3045, !DIExpression(), !3067)
  %.not4 = icmp ult i64 %14, %A.len, !dbg !3068
  br i1 %.not4, label %lookup.next14, label %lookup.throw13, !dbg !3068

lookup.next14:                                    ; preds = %for.body4
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3069)
    #dbg_value(i64 %M, !3040, !DIExpression(), !3070)
  br i1 %1, label %divbyzero.throw, label %divbyzero.next, !dbg !3071

divbyzero.next:                                   ; preds = %lookup.next14
  %16 = load i64, ptr %7, align 8, !dbg !3062
  %17 = load i64, ptr %13, align 8, !dbg !3063
  %18 = add i64 %17, %16, !dbg !3072
  %19 = getelementptr inbounds i64, ptr %A.data, i64 %14, !dbg !3068
  %20 = load i64, ptr %19, align 8, !dbg !3068
    #dbg_value(!DIArgList(i64 %18, i64 %20), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3069)
  %21 = add i64 %18, %20, !dbg !3073
    #dbg_value(i64 %21, !3041, !DIExpression(), !3069)
  %22 = icmp eq i64 %21, -9223372036854775808, !dbg !3071
  %23 = and i1 %2, %22, !dbg !3071
  %24 = select i1 %23, i64 1, i64 %M, !dbg !3071
  %25 = srem i64 %21, %24, !dbg !3071
  %26 = icmp eq i64 %25, 0, !dbg !3074
  %27 = zext i1 %26 to i64, !dbg !3051
  %spec.select = add i64 %15, %27, !dbg !3051
  %28 = add nuw nsw i64 %14, 1, !dbg !3075
    #dbg_value(i64 %28, !3045, !DIExpression(), !3076)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3060)
  %29 = icmp slt i64 %28, %N, !dbg !3061
  br i1 %29, label %for.body4, label %for.loop1.loopexit, !dbg !3051

for.done5:                                        ; preds = %for.loop1.loopexit, %for.loop1.preheader
  %.lcssa13 = phi i64 [ %4, %for.loop1.preheader ], [ %.lcssa, %for.loop1.loopexit ], !dbg !3048
    #dbg_value(i64 %5, !3043, !DIExpression(), !3052)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3077)
  %exitcond26.not = icmp eq i64 %5, %N, !dbg !3050
  br i1 %exitcond26.not, label %for.done6, label %for.loop1.preheader, !dbg !3051

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa18 = phi i64 [ 0, %entry ], [ %.lcssa13, %for.done5 ], !dbg !3048
    #dbg_value(i64 %.lcssa18, !3042, !DIExpression(), !3078)
  ret i64 %.lcssa18, !dbg !3079

lookup.throw:                                     ; preds = %for.body4.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3062
  unreachable, !dbg !3062

lookup.throw9:                                    ; preds = %for.body4.lr.ph.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !3063
  unreachable, !dbg !3063

lookup.throw13:                                   ; preds = %for.body4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3068
  unreachable, !dbg !3068

divbyzero.throw:                                  ; preds = %lookup.next14
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3071
  unreachable, !dbg !3071
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { cold nofree noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nofree nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #5 = { cold nofree noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { nofree "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #10 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!148, !150, !191, !192, !193, !215, !492, !511, !708, !724, !1450, !1461, !1494, !1495, !1731}
!llvm.ident = !{!1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732}
!llvm.module.flags = !{!1733, !1734}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !2, file: !2, line: 45, type: !3, isLocal: false, isDefinition: true, align: 64)
!2 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !5)
!5 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !6)
!6 = !{!7, !8, !10, !12, !16, !44, !46, !48, !49}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !3, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !11, size: 64, align: 64, offset: 128)
!11 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !13, align: 8, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !15)
!15 = !{}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !17, size: 384, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !19)
!19 = !{!20, !22, !24, !25, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !9)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !21, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !21, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !3, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !28, size: 32, align: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !32, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !37, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !41, align: 8)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !14)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !43, size: 32, align: 32)
!43 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !45, size: 8, align: 8, offset: 576)
!45 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !47, size: 8, align: 8, offset: 584)
!47 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !45, size: 8, align: 8, offset: 592)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !9, size: 64, align: 64, offset: 640)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !2, file: !2, line: 42, type: !4, isLocal: false, isDefinition: true, align: 64)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !54, line: 1, type: !55, isLocal: true, isDefinition: true)
!54 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 240, align: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 30, lowerBound: 0)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !2, file: !2, line: 40, type: !60, isLocal: false, isDefinition: true, align: 32)
!60 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !2, file: !2, line: 46, type: !63, isLocal: false, isDefinition: true, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !29)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20, lowerBound: 0)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !2, file: !2, line: 99, type: !43, isLocal: false, isDefinition: true, align: 32)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 136, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 17, lowerBound: 0)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !2, file: !2, line: 151, type: !79, isLocal: false, isDefinition: true, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !32, size: 32, align: 32)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !2, file: !2, line: 180, type: !32, isLocal: false, isDefinition: true, align: 32)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!87 = !DIFile(filename: "<Go type>", directory: "")
!88 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8)
!91 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 64)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !96)
!96 = !{!90, !97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 16)
!98 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 64)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !102, line: 78, type: !103, isLocal: true, isDefinition: true)
!102 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 56, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 7, lowerBound: 0)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !102, line: 99, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 24, lowerBound: 0)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !102, line: 101, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 2, lowerBound: 0)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !102, line: 184, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 184, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 23, lowerBound: 0)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !102, line: 194, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 144, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 18, lowerBound: 0)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !102, line: 227, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 112, align: 8, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 14, lowerBound: 0)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !133, file: !133, line: 75, type: !21, isLocal: false, isDefinition: true, align: 64)
!133 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !133, file: !133, line: 106, type: !136, isLocal: false, isDefinition: true, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !133, line: 155, type: !108, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !133, line: 158, type: !67, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !133, file: !133, line: 354, type: !33, isLocal: false, isDefinition: true, align: 32)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !133, file: !133, line: 358, type: !37, isLocal: false, isDefinition: true, align: 32)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !147, file: !147, line: 136, type: !64, isLocal: false, isDefinition: true, align: 32)
!147 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!149 = !DIFile(filename: "<unknown>", directory: "")
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !151)
!151 = !{!152, !93, !85, !158, !163, !166, !171, !176, !181, !186}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !154, line: 1, type: !155, isLocal: true, isDefinition: true)
!154 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, align: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 53, lowerBound: 0)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !154, line: 1, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 480, align: 8, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 60, lowerBound: 0)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !154, file: !154, line: 42, type: !165, isLocal: false, isDefinition: true, align: 8)
!165 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !154, line: 1, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 560, align: 8, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 70, lowerBound: 0)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !154, line: 1, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 336, align: 8, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 42, lowerBound: 0)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !154, line: 1, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 472, align: 8, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 59, lowerBound: 0)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !154, line: 1, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 328, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 41, lowerBound: 0)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !154, line: 1, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 464, align: 8, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 58, lowerBound: 0)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !194)
!194 = !{!195, !201, !203, !208, !213}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !197, line: 12, type: !198, isLocal: true, isDefinition: true)
!197 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 1, lowerBound: 0)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !197, line: 20, type: !198, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !197, line: 40, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, align: 8, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 3, lowerBound: 0)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !197, line: 46, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 16, lowerBound: 0)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !197, line: 51, type: !210, isLocal: true, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !216)
!216 = !{!217, !220, !268, !276, !291, !301, !307, !316, !342, !349, !355, !375, !380, !385, !387, !389, !391, !393, !395, !397, !399, !404, !406, !411, !413, !416, !418, !420, !422, !424, !429, !434, !436, !441, !443, !445, !450, !452, !454, !456, !458, !460, !462, !464, !466, !471, !473, !475, !477, !483, !485, !487}
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !219, file: !219, line: 17, type: !21, isLocal: false, isDefinition: true, align: 64)
!219 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !219, file: !219, line: 23, type: !222, isLocal: false, isDefinition: true, align: 8)
!222 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !223)
!223 = !{!224, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !225, size: 512, align: 8)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !226)
!226 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !229, size: 512, align: 8)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 512, align: 8, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 64, lowerBound: 0)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !47, size: 8, align: 8, offset: 520)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !47, size: 8, align: 8, offset: 528)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !47, size: 8, align: 8, offset: 536)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !47, size: 8, align: 8, offset: 544)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !47, size: 8, align: 8, offset: 552)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !47, size: 8, align: 8, offset: 560)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !47, size: 8, align: 8, offset: 568)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !47, size: 8, align: 8, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !47, size: 8, align: 8, offset: 584)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !47, size: 8, align: 8, offset: 592)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !47, size: 8, align: 8, offset: 600)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !47, size: 8, align: 8, offset: 608)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !47, size: 8, align: 8, offset: 616)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !47, size: 8, align: 8, offset: 624)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !47, size: 8, align: 8, offset: 632)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !47, size: 8, align: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !47, size: 8, align: 8, offset: 648)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 656)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !47, size: 8, align: 8, offset: 664)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !47, size: 8, align: 8, offset: 672)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !47, size: 8, align: 8, offset: 680)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !47, size: 8, align: 8, offset: 688)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !47, size: 8, align: 8, offset: 696)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !47, size: 8, align: 8, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !47, size: 8, align: 8, offset: 712)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 720)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !47, size: 8, align: 8, offset: 728)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !47, size: 8, align: 8, offset: 736)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !47, size: 8, align: 8, offset: 744)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !47, size: 8, align: 8, offset: 752)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !47, size: 8, align: 8, offset: 760)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !47, size: 8, align: 8, offset: 768)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !47, size: 8, align: 8, offset: 776)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !47, size: 8, align: 8, offset: 784)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !225, size: 512, align: 8, offset: 792)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !219, file: !219, line: 65, type: !270, isLocal: false, isDefinition: true, align: 8)
!270 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !271)
!271 = !{!224, !272, !273, !274, !275}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !47, size: 8, align: 8, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !47, size: 8, align: 8, offset: 520)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !47, size: 8, align: 8, offset: 528)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !225, size: 512, align: 8, offset: 536)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !219, file: !219, line: 75, type: !278, isLocal: false, isDefinition: true, align: 8)
!278 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !279)
!279 = !{!224, !232, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !47, size: 8, align: 8, offset: 520)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 528)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !47, size: 8, align: 8, offset: 536)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 544)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 552)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 560)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !47, size: 8, align: 8, offset: 568)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !47, size: 8, align: 8, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !47, size: 8, align: 8, offset: 584)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !47, size: 8, align: 8, offset: 592)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !225, size: 512, align: 8, offset: 600)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !219, file: !219, line: 93, type: !293, isLocal: false, isDefinition: true, align: 8)
!293 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !294)
!294 = !{!224, !295, !296, !297, !298, !299, !300}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !47, size: 8, align: 8, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !47, size: 8, align: 8, offset: 520)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 528)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !47, size: 8, align: 8, offset: 536)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !47, size: 8, align: 8, offset: 544)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !225, size: 512, align: 8, offset: 552)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !219, file: !219, line: 103, type: !303, isLocal: false, isDefinition: true, align: 8)
!303 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !304)
!304 = !{!224, !305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !225, size: 512, align: 8, offset: 520)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !219, file: !219, line: 114, type: !309, isLocal: false, isDefinition: true, align: 8)
!309 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !310)
!310 = !{!224, !311, !312, !313, !314, !315, !300}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !47, size: 8, align: 8, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !47, size: 8, align: 8, offset: 520)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !47, size: 8, align: 8, offset: 528)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !47, size: 8, align: 8, offset: 536)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !47, size: 8, align: 8, offset: 544)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !219, file: !219, line: 124, type: !318, isLocal: false, isDefinition: true, align: 8)
!318 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !319)
!319 = !{!224, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !47, size: 8, align: 8, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !47, size: 8, align: 8, offset: 520)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !47, size: 8, align: 8, offset: 528)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !47, size: 8, align: 8, offset: 536)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !47, size: 8, align: 8, offset: 544)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !47, size: 8, align: 8, offset: 552)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 560)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 568)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !47, size: 8, align: 8, offset: 576)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !47, size: 8, align: 8, offset: 584)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !47, size: 8, align: 8, offset: 592)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !47, size: 8, align: 8, offset: 600)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 608)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !47, size: 8, align: 8, offset: 616)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 624)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 632)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !47, size: 8, align: 8, offset: 640)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !47, size: 8, align: 8, offset: 648)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !47, size: 8, align: 8, offset: 656)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !47, size: 8, align: 8, offset: 664)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !47, size: 8, align: 8, offset: 672)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !225, size: 512, align: 8, offset: 680)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !219, file: !219, line: 154, type: !344, isLocal: false, isDefinition: true, align: 8)
!344 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !345)
!345 = !{!224, !346, !347, !348, !275}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !47, size: 8, align: 8, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !47, size: 8, align: 8, offset: 520)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !47, size: 8, align: 8, offset: 528)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !219, file: !219, line: 174, type: !351, isLocal: false, isDefinition: true, align: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !9, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !9, size: 64, align: 64, offset: 64)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !219, file: !219, line: 192, type: !357, isLocal: false, isDefinition: true, align: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !358)
!358 = !{!359, !369, !374}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64, dwarfAddressSpace: 0)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !362)
!362 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !363)
!363 = !{!364, !370, !372, !373}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !365, size: 128, align: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !366)
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64, dwarfAddressSpace: 0)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !21, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !371, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64, dwarfAddressSpace: 0)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !47, size: 8, align: 8, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !47, size: 8, align: 8, offset: 200)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !21, size: 64, align: 64, offset: 128)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !219, line: 218, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, align: 8, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 4, lowerBound: 0)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !219, line: 223, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, align: 8, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 33, lowerBound: 0)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !219, line: 223, type: !113, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !219, line: 230, type: !113, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !219, line: 239, type: !205, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !219, line: 255, type: !55, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !219, line: 255, type: !113, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !219, line: 232, type: !205, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !219, line: 235, type: !210, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !219, line: 235, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, align: 8, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 32, lowerBound: 0)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !219, line: 235, type: !113, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !219, line: 264, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, align: 8, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 25, lowerBound: 0)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !219, line: 264, type: !118, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !415, file: !415, line: 69, type: !43, isLocal: false, isDefinition: true, align: 32)
!415 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !415, line: 73, type: !205, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !415, line: 74, type: !205, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !415, line: 75, type: !377, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !415, line: 76, type: !377, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !415, line: 77, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, align: 8, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 9, lowerBound: 0)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !415, line: 78, type: !431, isLocal: true, isDefinition: true)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 6, lowerBound: 0)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !415, line: 79, type: !205, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !415, line: 80, type: !438, isLocal: true, isDefinition: true)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, align: 8, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 10, lowerBound: 0)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !415, line: 87, type: !431, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !415, line: 88, type: !377, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !415, line: 89, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 40, align: 8, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 5, lowerBound: 0)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !415, line: 90, type: !447, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !415, line: 91, type: !447, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !415, line: 97, type: !205, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !415, line: 98, type: !377, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !415, line: 99, type: !377, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !415, line: 100, type: !377, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !415, line: 101, type: !205, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !415, line: 107, type: !103, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !415, line: 108, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 8, lowerBound: 0)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !415, line: 109, type: !468, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !415, line: 110, type: !468, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !415, line: 111, type: !468, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !479, line: 1, type: !480, isLocal: true, isDefinition: true)
!479 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 104, align: 8, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 13, lowerBound: 0)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !479, line: 1, type: !489, isLocal: true, isDefinition: true)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 664, align: 8, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 83, lowerBound: 0)
!492 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !493)
!493 = !{!494, !498, !500, !509}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !496, file: !496, line: 44, type: !497, isLocal: false, isDefinition: true, align: 8)
!496 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, align: 8, elements: !402)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !496, file: !496, line: 51, type: !229, isLocal: false, isDefinition: true, align: 8)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !502, file: !502, line: 12, type: !503, isLocal: false, isDefinition: true, align: 64)
!502 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !505)
!505 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !9, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !9, size: 64, align: 64, offset: 64)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !502, file: !502, line: 15, type: !503, isLocal: false, isDefinition: true, align: 64)
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !512)
!512 = !{!513, !515, !518, !523, !526, !529, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !602, !604, !606, !611, !613, !615, !617, !621, !624, !629, !632, !634, !638, !640, !643, !645, !649, !653, !655, !657, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706}
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !219, file: !219, line: 23, type: !222, isLocal: false, isDefinition: true, align: 8)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !517, file: !517, line: 11, type: !47, isLocal: false, isDefinition: true, align: 8)
!517 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !520, file: !520, line: 66, type: !521, isLocal: false, isDefinition: true, align: 64)
!520 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 448, align: 64, elements: !104)
!522 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !520, file: !520, line: 75, type: !525, isLocal: false, isDefinition: true, align: 64)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 512, align: 64, elements: !469)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !520, file: !520, line: 85, type: !528, isLocal: false, isDefinition: true, align: 64)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 320, align: 64, elements: !448)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !531, file: !531, line: 240, type: !532, isLocal: false, isDefinition: true, align: 64)
!531 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 384, align: 64, elements: !432)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !531, file: !531, line: 248, type: !528, isLocal: false, isDefinition: true, align: 64)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !531, file: !531, line: 257, type: !532, isLocal: false, isDefinition: true, align: 64)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !531, file: !531, line: 265, type: !528, isLocal: false, isDefinition: true, align: 64)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !531, file: !531, line: 274, type: !532, isLocal: false, isDefinition: true, align: 64)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !531, file: !531, line: 282, type: !528, isLocal: false, isDefinition: true, align: 64)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !531, file: !531, line: 291, type: !532, isLocal: false, isDefinition: true, align: 64)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !531, file: !531, line: 299, type: !528, isLocal: false, isDefinition: true, align: 64)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !531, file: !531, line: 339, type: !532, isLocal: false, isDefinition: true, align: 64)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !531, file: !531, line: 347, type: !532, isLocal: false, isDefinition: true, align: 64)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !531, file: !531, line: 357, type: !532, isLocal: false, isDefinition: true, align: 64)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !531, file: !531, line: 365, type: !532, isLocal: false, isDefinition: true, align: 64)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !531, file: !531, line: 375, type: !532, isLocal: false, isDefinition: true, align: 64)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !531, file: !531, line: 383, type: !532, isLocal: false, isDefinition: true, align: 64)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !531, file: !531, line: 393, type: !532, isLocal: false, isDefinition: true, align: 64)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !531, file: !531, line: 401, type: !532, isLocal: false, isDefinition: true, align: 64)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !565, file: !565, line: 235, type: !532, isLocal: false, isDefinition: true, align: 64)
!565 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !565, file: !565, line: 243, type: !528, isLocal: false, isDefinition: true, align: 64)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !565, file: !565, line: 252, type: !532, isLocal: false, isDefinition: true, align: 64)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !565, file: !565, line: 260, type: !528, isLocal: false, isDefinition: true, align: 64)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !565, file: !565, line: 269, type: !532, isLocal: false, isDefinition: true, align: 64)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !565, file: !565, line: 277, type: !528, isLocal: false, isDefinition: true, align: 64)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !565, file: !565, line: 286, type: !532, isLocal: false, isDefinition: true, align: 64)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !565, file: !565, line: 294, type: !528, isLocal: false, isDefinition: true, align: 64)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !565, file: !565, line: 334, type: !532, isLocal: false, isDefinition: true, align: 64)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !565, file: !565, line: 342, type: !532, isLocal: false, isDefinition: true, align: 64)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !565, file: !565, line: 352, type: !532, isLocal: false, isDefinition: true, align: 64)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !565, file: !565, line: 360, type: !532, isLocal: false, isDefinition: true, align: 64)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !565, file: !565, line: 370, type: !532, isLocal: false, isDefinition: true, align: 64)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !565, file: !565, line: 378, type: !532, isLocal: false, isDefinition: true, align: 64)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !565, file: !565, line: 388, type: !532, isLocal: false, isDefinition: true, align: 64)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !565, file: !565, line: 396, type: !532, isLocal: false, isDefinition: true, align: 64)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !598, file: !598, line: 91, type: !599, isLocal: false, isDefinition: true, align: 64)
!598 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 768, align: 64, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 12, lowerBound: 0)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !598, file: !598, line: 105, type: !521, isLocal: false, isDefinition: true, align: 64)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !598, file: !598, line: 114, type: !521, isLocal: false, isDefinition: true, align: 64)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !598, file: !598, line: 123, type: !608, isLocal: false, isDefinition: true, align: 64)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 960, align: 64, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 15, lowerBound: 0)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !598, file: !598, line: 140, type: !532, isLocal: false, isDefinition: true, align: 64)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !598, file: !598, line: 148, type: !532, isLocal: false, isDefinition: true, align: 64)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !598, file: !598, line: 156, type: !521, isLocal: false, isDefinition: true, align: 64)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !619, file: !619, line: 8, type: !620, isLocal: false, isDefinition: true, align: 64)
!619 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 2048, align: 64, elements: !402)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !619, file: !619, line: 16, type: !623, isLocal: false, isDefinition: true, align: 64)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 640, align: 64, elements: !439)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !619, file: !619, line: 21, type: !626, isLocal: false, isDefinition: true, align: 64)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 704, align: 64, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 11, lowerBound: 0)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !631, file: !631, line: 93, type: !532, isLocal: false, isDefinition: true, align: 64)
!631 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !631, file: !631, line: 103, type: !532, isLocal: false, isDefinition: true, align: 64)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !636, file: !636, line: 63, type: !637, isLocal: false, isDefinition: true, align: 64)
!636 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 192, align: 64, elements: !206)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !636, file: !636, line: 68, type: !528, isLocal: false, isDefinition: true, align: 64)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !642, file: !642, line: 57, type: !637, isLocal: false, isDefinition: true, align: 64)
!642 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !642, file: !642, line: 62, type: !637, isLocal: false, isDefinition: true, align: 64)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !647, file: !647, line: 81, type: !648, isLocal: false, isDefinition: true, align: 64)
!647 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, align: 64, elements: !68)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !651, line: 1, type: !652, isLocal: true, isDefinition: true)
!651 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, align: 8, elements: !609)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!659 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !659, line: 1, type: !652, isLocal: true, isDefinition: true)
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !709)
!709 = !{!710, !716}
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !712, file: !712, line: 71, type: !713, isLocal: false, isDefinition: true, align: 8)
!712 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 256, lowerBound: 0)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !712, file: !712, line: 100, type: !718, isLocal: false, isDefinition: true, align: 8)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 256, align: 8, elements: !211)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !720)
!720 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !45, size: 8, align: 8)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !45, size: 8, align: 8, offset: 8)
!724 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !725)
!725 = !{!726, !729, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !763, !765, !768, !770, !772, !774, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !875, !893, !898, !900, !902, !904, !906, !908, !910, !912, !924, !930, !938, !942, !944, !946, !948, !950, !959, !961, !969, !978, !980, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1033, !1039, !1045, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1091, !1093, !1095, !1097, !1099, !1101, !1103, !1105, !1110, !1115, !1120, !1125, !1127, !1129, !1131, !1136, !1138, !1140, !1142, !1144, !1146, !1151, !1153, !1155, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1171, !1173, !1175, !1177, !1179, !1181, !1183, !1185, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1201, !1203, !1205, !1207, !1212, !1214, !1216, !1218, !1220, !1222, !1227, !1229, !1231, !1233, !1235, !1237, !1242, !1244, !1246, !1251, !1253, !1255, !1257, !1259, !1261, !1263, !1265, !1267, !1269, !1271, !1273, !1275, !1280, !1282, !1284, !1286, !1288, !1290, !1292, !1294, !1296, !1301, !1303, !1308, !1313, !1315, !1317, !1319, !1324, !1326, !1328, !1330, !1332, !1337, !1339, !1341, !1343, !1345, !1347, !1352, !1354, !1359, !1361, !1363, !1365, !1367, !1369, !1371, !1373, !1375, !1377, !1379, !1381, !1386, !1388, !1393, !1395, !1397, !1399, !1401, !1404, !1406, !1408, !1410, !1412, !1414, !1416, !1418, !1420, !1422, !1427, !1429, !1431, !1433, !1435, !1437, !1439, !1441, !1443, !1445, !1448}
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !728, line: 393, type: !377, isLocal: true, isDefinition: true)
!728 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !728, file: !728, line: 393, type: !731, isLocal: false, isDefinition: true, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64, dwarfAddressSpace: 0)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !733)
!733 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !365, size: 128, align: 64)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !728, line: 394, type: !205, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !728, file: !728, line: 394, type: !731, isLocal: false, isDefinition: true, align: 64)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !728, line: 395, type: !447, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !728, file: !728, line: 395, type: !731, isLocal: false, isDefinition: true, align: 64)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !728, line: 396, type: !377, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !728, file: !728, line: 396, type: !731, isLocal: false, isDefinition: true, align: 64)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !728, line: 397, type: !205, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !728, file: !728, line: 397, type: !731, isLocal: false, isDefinition: true, align: 64)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !728, line: 398, type: !468, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !728, file: !728, line: 398, type: !731, isLocal: false, isDefinition: true, align: 64)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !728, line: 399, type: !103, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !728, file: !728, line: 399, type: !731, isLocal: false, isDefinition: true, align: 64)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !728, line: 400, type: !762, isLocal: true, isDefinition: true)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 88, align: 8, elements: !627)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !728, file: !728, line: 400, type: !731, isLocal: false, isDefinition: true, align: 64)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !728, line: 401, type: !767, isLocal: true, isDefinition: true)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 8, elements: !600)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !728, file: !728, line: 401, type: !731, isLocal: false, isDefinition: true, align: 64)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "type *uint8", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "type uint8", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !776, file: !776, line: 956, type: !777, isLocal: false, isDefinition: true, align: 64)
!776 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64, dwarfAddressSpace: 0)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !779)
!779 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !45, size: 8, align: 8)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !87, file: !87, line: 1, type: !864, isLocal: false, isDefinition: true, align: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !865)
!865 = !{!90, !97, !92, !866, !867, !868, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !43, size: 32, align: 32, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !98, size: 16, align: 16, offset: 224)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !870, size: 128, align: 64, offset: 256)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 128, align: 64, elements: !199)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !872)
!872 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !873)
!873 = !{!507, !874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !368, size: 64, align: 64, offset: 64)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !877, isLocal: false, isDefinition: true, align: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !891}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !9, size: 64, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 80)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !886, size: 320, align: 64, offset: 320)
!886 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !21, size: 64, align: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !890, size: 256, align: 64, offset: 64)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 64, elements: !378)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !892, size: 160, align: 8, offset: 640)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, align: 8, elements: !68)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !895, isLocal: true, isDefinition: true)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 224, align: 8, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 28, lowerBound: 0)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !652, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !895, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !480, isLocal: true, isDefinition: true)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !895, isLocal: true, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !762, isLocal: true, isDefinition: true)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !895, isLocal: true, isDefinition: true)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !767, isLocal: true, isDefinition: true)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !914, isLocal: false, isDefinition: true, align: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !915)
!915 = !{!879, !880, !881, !916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !918, size: 2304, align: 64, offset: 192)
!918 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !919)
!919 = !{!888, !920}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !921, size: 2240, align: 64, offset: 64)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2240, align: 64, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 35, lowerBound: 0)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !926, isLocal: false, isDefinition: true, align: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !927)
!927 = !{!90, !97, !92, !866, !867, !868, !928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !929, size: 384, align: 64, offset: 256)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 384, align: 64, elements: !206)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !932, isLocal: false, isDefinition: true, align: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !933)
!933 = !{!90, !97, !92, !934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !937, size: 144, align: 8, offset: 256)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 144, align: 8, elements: !124)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !940, file: !940, line: 12, type: !941, isLocal: false, isDefinition: true, align: 8)
!940 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !14)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !940, line: 17, type: !128, isLocal: true, isDefinition: true)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !940, line: 1, type: !55, isLocal: true, isDefinition: true)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !940, line: 1, type: !447, isLocal: true, isDefinition: true)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !952, isLocal: false, isDefinition: true, align: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !953)
!953 = !{!879, !880, !881, !916, !954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !955, size: 128, align: 64, offset: 192)
!955 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !956)
!956 = !{!888, !957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !958, size: 64, align: 64, offset: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 64, elements: !199)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(name: "type struct{}", scope: !87, file: !87, line: 1, type: !963, isLocal: false, isDefinition: true, align: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !964)
!964 = !{!90, !97, !92, !866, !867, !868, !965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !966, align: 64, offset: 256)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, align: 64, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 0, lowerBound: 0)
!969 = !DIGlobalVariableExpression(var: !970, expr: !DIExpression())
!970 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !971, isLocal: false, isDefinition: true, align: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !972)
!972 = !{!879, !880, !881, !882, !883, !884, !973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !955, size: 128, align: 64, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !975, size: 176, align: 8, offset: 448)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 176, align: 8, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 22, lowerBound: 0)
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !940, line: 250, type: !113, isLocal: true, isDefinition: true)
!980 = !DIGlobalVariableExpression(var: !981, expr: !DIExpression())
!981 = distinct !DIGlobalVariable(scope: null, file: !940, line: 251, type: !652, isLocal: true, isDefinition: true)
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(scope: null, file: !940, line: 252, type: !652, isLocal: true, isDefinition: true)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !940, line: 278, type: !113, isLocal: true, isDefinition: true)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !940, line: 280, type: !113, isLocal: true, isDefinition: true)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !940, line: 282, type: !113, isLocal: true, isDefinition: true)
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !940, line: 284, type: !113, isLocal: true, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !940, line: 286, type: !113, isLocal: true, isDefinition: true)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !940, line: 288, type: !113, isLocal: true, isDefinition: true)
!996 = !DIGlobalVariableExpression(var: !997, expr: !DIExpression())
!997 = distinct !DIGlobalVariable(scope: null, file: !940, line: 290, type: !113, isLocal: true, isDefinition: true)
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(scope: null, file: !940, line: 294, type: !113, isLocal: true, isDefinition: true)
!1000 = !DIGlobalVariableExpression(var: !1001, expr: !DIExpression())
!1001 = distinct !DIGlobalVariable(scope: null, file: !940, line: 295, type: !652, isLocal: true, isDefinition: true)
!1002 = !DIGlobalVariableExpression(var: !1003, expr: !DIExpression())
!1003 = distinct !DIGlobalVariable(scope: null, file: !940, line: 296, type: !652, isLocal: true, isDefinition: true)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(scope: null, file: !940, line: 301, type: !113, isLocal: true, isDefinition: true)
!1006 = !DIGlobalVariableExpression(var: !1007, expr: !DIExpression())
!1007 = distinct !DIGlobalVariable(scope: null, file: !940, line: 303, type: !652, isLocal: true, isDefinition: true)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(scope: null, file: !940, line: 306, type: !113, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !940, line: 308, type: !652, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !1014, line: 16, type: !103, isLocal: true, isDefinition: true)
!1014 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1015 = !DIGlobalVariableExpression(var: !1016, expr: !DIExpression())
!1016 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1021 = !DIGlobalVariableExpression(var: !1022, expr: !DIExpression())
!1022 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !408, isLocal: true, isDefinition: true)
!1023 = !DIGlobalVariableExpression(var: !1024, expr: !DIExpression())
!1024 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !431, isLocal: true, isDefinition: true)
!1025 = !DIGlobalVariableExpression(var: !1026, expr: !DIExpression())
!1026 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !952, isLocal: false, isDefinition: true, align: 64)
!1027 = !DIGlobalVariableExpression(var: !1028, expr: !DIExpression())
!1028 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !1029, isLocal: false, isDefinition: true, align: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1030)
!1030 = !{!879, !880, !881, !882, !883, !884, !973, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1032, size: 136, align: 8, offset: 448)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 136, align: 8, elements: !75)
!1033 = !DIGlobalVariableExpression(var: !1034, expr: !DIExpression())
!1034 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !1035, isLocal: false, isDefinition: true, align: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !1036)
!1036 = !{!90, !97, !92, !866, !867, !868, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1038, size: 256, align: 64, offset: 256)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 256, align: 64, elements: !114)
!1039 = !DIGlobalVariableExpression(var: !1040, expr: !DIExpression())
!1040 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !1041, isLocal: false, isDefinition: true, align: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1042)
!1042 = !{!90, !97, !92, !934, !935, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1044, size: 184, align: 8, offset: 256)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 184, align: 8, elements: !119)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !952, isLocal: false, isDefinition: true, align: 64)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(scope: null, file: !1014, line: 1, type: !382, isLocal: true, isDefinition: true)
!1049 = !DIGlobalVariableExpression(var: !1050, expr: !DIExpression())
!1050 = distinct !DIGlobalVariable(scope: null, file: !728, line: 60, type: !103, isLocal: true, isDefinition: true)
!1051 = !DIGlobalVariableExpression(var: !1052, expr: !DIExpression())
!1052 = distinct !DIGlobalVariable(scope: null, file: !728, line: 62, type: !377, isLocal: true, isDefinition: true)
!1053 = !DIGlobalVariableExpression(var: !1054, expr: !DIExpression())
!1054 = distinct !DIGlobalVariable(scope: null, file: !728, line: 64, type: !205, isLocal: true, isDefinition: true)
!1055 = !DIGlobalVariableExpression(var: !1056, expr: !DIExpression())
!1056 = distinct !DIGlobalVariable(scope: null, file: !728, line: 66, type: !377, isLocal: true, isDefinition: true)
!1057 = !DIGlobalVariableExpression(var: !1058, expr: !DIExpression())
!1058 = distinct !DIGlobalVariable(scope: null, file: !728, line: 68, type: !447, isLocal: true, isDefinition: true)
!1059 = !DIGlobalVariableExpression(var: !1060, expr: !DIExpression())
!1060 = distinct !DIGlobalVariable(scope: null, file: !728, line: 70, type: !447, isLocal: true, isDefinition: true)
!1061 = !DIGlobalVariableExpression(var: !1062, expr: !DIExpression())
!1062 = distinct !DIGlobalVariable(scope: null, file: !728, line: 72, type: !447, isLocal: true, isDefinition: true)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression())
!1064 = distinct !DIGlobalVariable(scope: null, file: !728, line: 74, type: !377, isLocal: true, isDefinition: true)
!1065 = !DIGlobalVariableExpression(var: !1066, expr: !DIExpression())
!1066 = distinct !DIGlobalVariable(scope: null, file: !728, line: 76, type: !447, isLocal: true, isDefinition: true)
!1067 = !DIGlobalVariableExpression(var: !1068, expr: !DIExpression())
!1068 = distinct !DIGlobalVariable(scope: null, file: !728, line: 78, type: !431, isLocal: true, isDefinition: true)
!1069 = !DIGlobalVariableExpression(var: !1070, expr: !DIExpression())
!1070 = distinct !DIGlobalVariable(scope: null, file: !728, line: 80, type: !431, isLocal: true, isDefinition: true)
!1071 = !DIGlobalVariableExpression(var: !1072, expr: !DIExpression())
!1072 = distinct !DIGlobalVariable(scope: null, file: !728, line: 82, type: !431, isLocal: true, isDefinition: true)
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression())
!1074 = distinct !DIGlobalVariable(scope: null, file: !728, line: 84, type: !103, isLocal: true, isDefinition: true)
!1075 = !DIGlobalVariableExpression(var: !1076, expr: !DIExpression())
!1076 = distinct !DIGlobalVariable(scope: null, file: !728, line: 86, type: !103, isLocal: true, isDefinition: true)
!1077 = !DIGlobalVariableExpression(var: !1078, expr: !DIExpression())
!1078 = distinct !DIGlobalVariable(scope: null, file: !728, line: 88, type: !103, isLocal: true, isDefinition: true)
!1079 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression())
!1080 = distinct !DIGlobalVariable(scope: null, file: !728, line: 90, type: !426, isLocal: true, isDefinition: true)
!1081 = !DIGlobalVariableExpression(var: !1082, expr: !DIExpression())
!1082 = distinct !DIGlobalVariable(scope: null, file: !728, line: 92, type: !438, isLocal: true, isDefinition: true)
!1083 = !DIGlobalVariableExpression(var: !1084, expr: !DIExpression())
!1084 = distinct !DIGlobalVariable(scope: null, file: !728, line: 94, type: !431, isLocal: true, isDefinition: true)
!1085 = !DIGlobalVariableExpression(var: !1086, expr: !DIExpression())
!1086 = distinct !DIGlobalVariable(scope: null, file: !728, line: 96, type: !128, isLocal: true, isDefinition: true)
!1087 = !DIGlobalVariableExpression(var: !1088, expr: !DIExpression())
!1088 = distinct !DIGlobalVariable(scope: null, file: !728, line: 98, type: !377, isLocal: true, isDefinition: true)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(scope: null, file: !728, line: 100, type: !426, isLocal: true, isDefinition: true)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(scope: null, file: !728, line: 102, type: !205, isLocal: true, isDefinition: true)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression())
!1094 = distinct !DIGlobalVariable(scope: null, file: !728, line: 104, type: !447, isLocal: true, isDefinition: true)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression())
!1096 = distinct !DIGlobalVariable(scope: null, file: !728, line: 106, type: !447, isLocal: true, isDefinition: true)
!1097 = !DIGlobalVariableExpression(var: !1098, expr: !DIExpression())
!1098 = distinct !DIGlobalVariable(scope: null, file: !728, line: 108, type: !377, isLocal: true, isDefinition: true)
!1099 = !DIGlobalVariableExpression(var: !1100, expr: !DIExpression())
!1100 = distinct !DIGlobalVariable(scope: null, file: !728, line: 110, type: !205, isLocal: true, isDefinition: true)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(scope: null, file: !728, line: 112, type: !431, isLocal: true, isDefinition: true)
!1103 = !DIGlobalVariableExpression(var: !1104, expr: !DIExpression())
!1104 = distinct !DIGlobalVariable(scope: null, file: !728, line: 114, type: !377, isLocal: true, isDefinition: true)
!1105 = !DIGlobalVariableExpression(var: !1106, expr: !DIExpression())
!1106 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1107, isLocal: true, isDefinition: true)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 352, align: 8, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 44, lowerBound: 0)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1112, isLocal: true, isDefinition: true)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 8, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 40, lowerBound: 0)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1117, isLocal: true, isDefinition: true)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 288, align: 8, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 36, lowerBound: 0)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1122, isLocal: true, isDefinition: true)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 304, align: 8, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 38, lowerBound: 0)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression())
!1126 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !401, isLocal: true, isDefinition: true)
!1127 = !DIGlobalVariableExpression(var: !1128, expr: !DIExpression())
!1128 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1129 = !DIGlobalVariableExpression(var: !1130, expr: !DIExpression())
!1130 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !87, file: !87, line: 1, type: !864, isLocal: false, isDefinition: true, align: 64)
!1131 = !DIGlobalVariableExpression(var: !1132, expr: !DIExpression())
!1132 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !1133, isLocal: false, isDefinition: true, align: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1134)
!1134 = !{!90, !97, !92, !934, !935, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !975, size: 176, align: 8, offset: 256)
!1136 = !DIGlobalVariableExpression(var: !1137, expr: !DIExpression())
!1137 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !952, isLocal: false, isDefinition: true, align: 64)
!1138 = !DIGlobalVariableExpression(var: !1139, expr: !DIExpression())
!1139 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1059, type: !652, isLocal: true, isDefinition: true)
!1140 = !DIGlobalVariableExpression(var: !1141, expr: !DIExpression())
!1141 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !155, isLocal: true, isDefinition: true)
!1142 = !DIGlobalVariableExpression(var: !1143, expr: !DIExpression())
!1143 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !74, isLocal: true, isDefinition: true)
!1144 = !DIGlobalVariableExpression(var: !1145, expr: !DIExpression())
!1145 = distinct !DIGlobalVariable(scope: null, file: !728, line: 965, type: !103, isLocal: true, isDefinition: true)
!1146 = !DIGlobalVariableExpression(var: !1147, expr: !DIExpression())
!1147 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1148, isLocal: true, isDefinition: true)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 216, align: 8, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 27, lowerBound: 0)
!1151 = !DIGlobalVariableExpression(var: !1152, expr: !DIExpression())
!1152 = distinct !DIGlobalVariable(scope: null, file: !728, line: 329, type: !103, isLocal: true, isDefinition: true)
!1153 = !DIGlobalVariableExpression(var: !1154, expr: !DIExpression())
!1154 = distinct !DIGlobalVariable(scope: null, file: !728, line: 331, type: !103, isLocal: true, isDefinition: true)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression())
!1156 = distinct !DIGlobalVariable(scope: null, file: !728, line: 338, type: !431, isLocal: true, isDefinition: true)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(scope: null, file: !728, line: 338, type: !198, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(scope: null, file: !728, line: 340, type: !447, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !728, line: 344, type: !198, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !728, line: 346, type: !113, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !728, line: 348, type: !198, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !728, line: 348, type: !198, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !728, line: 350, type: !377, isLocal: true, isDefinition: true)
!1171 = !DIGlobalVariableExpression(var: !1172, expr: !DIExpression())
!1172 = distinct !DIGlobalVariable(scope: null, file: !728, line: 350, type: !198, isLocal: true, isDefinition: true)
!1173 = !DIGlobalVariableExpression(var: !1174, expr: !DIExpression())
!1174 = distinct !DIGlobalVariable(scope: null, file: !728, line: 354, type: !426, isLocal: true, isDefinition: true)
!1175 = !DIGlobalVariableExpression(var: !1176, expr: !DIExpression())
!1176 = distinct !DIGlobalVariable(scope: null, file: !728, line: 356, type: !468, isLocal: true, isDefinition: true)
!1177 = !DIGlobalVariableExpression(var: !1178, expr: !DIExpression())
!1178 = distinct !DIGlobalVariable(scope: null, file: !728, line: 359, type: !198, isLocal: true, isDefinition: true)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression())
!1180 = distinct !DIGlobalVariable(scope: null, file: !728, line: 359, type: !198, isLocal: true, isDefinition: true)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(scope: null, file: !728, line: 361, type: !198, isLocal: true, isDefinition: true)
!1183 = !DIGlobalVariableExpression(var: !1184, expr: !DIExpression())
!1184 = distinct !DIGlobalVariable(scope: null, file: !728, line: 365, type: !198, isLocal: true, isDefinition: true)
!1185 = !DIGlobalVariableExpression(var: !1186, expr: !DIExpression())
!1186 = distinct !DIGlobalVariable(scope: null, file: !728, line: 368, type: !113, isLocal: true, isDefinition: true)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(scope: null, file: !728, line: 372, type: !767, isLocal: true, isDefinition: true)
!1189 = !DIGlobalVariableExpression(var: !1190, expr: !DIExpression())
!1190 = distinct !DIGlobalVariable(scope: null, file: !728, line: 356, type: !468, isLocal: true, isDefinition: true)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !382, isLocal: true, isDefinition: true)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !401, isLocal: true, isDefinition: true)
!1195 = !DIGlobalVariableExpression(var: !1196, expr: !DIExpression())
!1196 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1212, type: !55, isLocal: true, isDefinition: true)
!1197 = !DIGlobalVariableExpression(var: !1198, expr: !DIExpression())
!1198 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1212, type: !210, isLocal: true, isDefinition: true)
!1199 = !DIGlobalVariableExpression(var: !1200, expr: !DIExpression())
!1200 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !401, isLocal: true, isDefinition: true)
!1201 = !DIGlobalVariableExpression(var: !1202, expr: !DIExpression())
!1202 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !401, isLocal: true, isDefinition: true)
!1203 = !DIGlobalVariableExpression(var: !1204, expr: !DIExpression())
!1204 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !382, isLocal: true, isDefinition: true)
!1205 = !DIGlobalVariableExpression(var: !1206, expr: !DIExpression())
!1206 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !55, isLocal: true, isDefinition: true)
!1207 = !DIGlobalVariableExpression(var: !1208, expr: !DIExpression())
!1208 = distinct !DIGlobalVariable(scope: null, file: !728, line: 1, type: !1209, isLocal: true, isDefinition: true)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 248, align: 8, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 31, lowerBound: 0)
!1212 = !DIGlobalVariableExpression(var: !1213, expr: !DIExpression())
!1213 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !183, isLocal: true, isDefinition: true)
!1214 = !DIGlobalVariableExpression(var: !1215, expr: !DIExpression())
!1215 = distinct !DIGlobalVariable(scope: null, file: !776, line: 441, type: !377, isLocal: true, isDefinition: true)
!1216 = !DIGlobalVariableExpression(var: !1217, expr: !DIExpression())
!1217 = distinct !DIGlobalVariable(scope: null, file: !776, line: 650, type: !447, isLocal: true, isDefinition: true)
!1218 = !DIGlobalVariableExpression(var: !1219, expr: !DIExpression())
!1219 = distinct !DIGlobalVariable(scope: null, file: !776, line: 658, type: !447, isLocal: true, isDefinition: true)
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(scope: null, file: !776, line: 667, type: !447, isLocal: true, isDefinition: true)
!1222 = !DIGlobalVariableExpression(var: !1223, expr: !DIExpression())
!1223 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1224, isLocal: true, isDefinition: true)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 296, align: 8, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 37, lowerBound: 0)
!1227 = !DIGlobalVariableExpression(var: !1228, expr: !DIExpression())
!1228 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !173, isLocal: true, isDefinition: true)
!1229 = !DIGlobalVariableExpression(var: !1230, expr: !DIExpression())
!1230 = distinct !DIGlobalVariable(scope: null, file: !776, line: 824, type: !205, isLocal: true, isDefinition: true)
!1231 = !DIGlobalVariableExpression(var: !1232, expr: !DIExpression())
!1232 = distinct !DIGlobalVariable(scope: null, file: !776, line: 843, type: !447, isLocal: true, isDefinition: true)
!1233 = !DIGlobalVariableExpression(var: !1234, expr: !DIExpression())
!1234 = distinct !DIGlobalVariable(scope: null, file: !776, line: 630, type: !103, isLocal: true, isDefinition: true)
!1235 = !DIGlobalVariableExpression(var: !1236, expr: !DIExpression())
!1236 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1425, type: !1224, isLocal: true, isDefinition: true)
!1237 = !DIGlobalVariableExpression(var: !1238, expr: !DIExpression())
!1238 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1425, type: !1239, isLocal: true, isDefinition: true)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 232, align: 8, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 29, lowerBound: 0)
!1242 = !DIGlobalVariableExpression(var: !1243, expr: !DIExpression())
!1243 = distinct !DIGlobalVariable(scope: null, file: !776, line: 875, type: !377, isLocal: true, isDefinition: true)
!1244 = !DIGlobalVariableExpression(var: !1245, expr: !DIExpression())
!1245 = distinct !DIGlobalVariable(scope: null, file: !776, line: 407, type: !1117, isLocal: true, isDefinition: true)
!1246 = !DIGlobalVariableExpression(var: !1247, expr: !DIExpression())
!1247 = distinct !DIGlobalVariable(scope: null, file: !776, line: 407, type: !1248, isLocal: true, isDefinition: true)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 152, align: 8, elements: !1249)
!1249 = !{!1250}
!1250 = !DISubrange(count: 19, lowerBound: 0)
!1251 = !DIGlobalVariableExpression(var: !1252, expr: !DIExpression())
!1252 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !382, isLocal: true, isDefinition: true)
!1253 = !DIGlobalVariableExpression(var: !1254, expr: !DIExpression())
!1254 = distinct !DIGlobalVariable(scope: null, file: !776, line: 882, type: !447, isLocal: true, isDefinition: true)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression())
!1256 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2067, type: !767, isLocal: true, isDefinition: true)
!1257 = !DIGlobalVariableExpression(var: !1258, expr: !DIExpression())
!1258 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !178, isLocal: true, isDefinition: true)
!1259 = !DIGlobalVariableExpression(var: !1260, expr: !DIExpression())
!1260 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2085, type: !652, isLocal: true, isDefinition: true)
!1261 = !DIGlobalVariableExpression(var: !1262, expr: !DIExpression())
!1262 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2090, type: !762, isLocal: true, isDefinition: true)
!1263 = !DIGlobalVariableExpression(var: !1264, expr: !DIExpression())
!1264 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2101, type: !762, isLocal: true, isDefinition: true)
!1265 = !DIGlobalVariableExpression(var: !1266, expr: !DIExpression())
!1266 = distinct !DIGlobalVariable(scope: null, file: !776, line: 598, type: !447, isLocal: true, isDefinition: true)
!1267 = !DIGlobalVariableExpression(var: !1268, expr: !DIExpression())
!1268 = distinct !DIGlobalVariable(scope: null, file: !776, line: 573, type: !447, isLocal: true, isDefinition: true)
!1269 = !DIGlobalVariableExpression(var: !1270, expr: !DIExpression())
!1270 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1239, isLocal: true, isDefinition: true)
!1271 = !DIGlobalVariableExpression(var: !1272, expr: !DIExpression())
!1272 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1957, type: !377, isLocal: true, isDefinition: true)
!1273 = !DIGlobalVariableExpression(var: !1274, expr: !DIExpression())
!1274 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !382, isLocal: true, isDefinition: true)
!1275 = !DIGlobalVariableExpression(var: !1276, expr: !DIExpression())
!1276 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1277, isLocal: true, isDefinition: true)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 272, align: 8, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 34, lowerBound: 0)
!1280 = !DIGlobalVariableExpression(var: !1281, expr: !DIExpression())
!1281 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1041, type: !447, isLocal: true, isDefinition: true)
!1282 = !DIGlobalVariableExpression(var: !1283, expr: !DIExpression())
!1283 = distinct !DIGlobalVariable(scope: null, file: !776, line: 488, type: !205, isLocal: true, isDefinition: true)
!1284 = !DIGlobalVariableExpression(var: !1285, expr: !DIExpression())
!1285 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1224, isLocal: true, isDefinition: true)
!1286 = !DIGlobalVariableExpression(var: !1287, expr: !DIExpression())
!1287 = distinct !DIGlobalVariable(scope: null, file: !776, line: 247, type: !447, isLocal: true, isDefinition: true)
!1288 = !DIGlobalVariableExpression(var: !1289, expr: !DIExpression())
!1289 = distinct !DIGlobalVariable(scope: null, file: !776, line: 201, type: !198, isLocal: true, isDefinition: true)
!1290 = !DIGlobalVariableExpression(var: !1291, expr: !DIExpression())
!1291 = distinct !DIGlobalVariable(scope: null, file: !776, line: 209, type: !67, isLocal: true, isDefinition: true)
!1292 = !DIGlobalVariableExpression(var: !1293, expr: !DIExpression())
!1293 = distinct !DIGlobalVariable(scope: null, file: !776, line: 806, type: !205, isLocal: true, isDefinition: true)
!1294 = !DIGlobalVariableExpression(var: !1295, expr: !DIExpression())
!1295 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1117, type: !468, isLocal: true, isDefinition: true)
!1296 = !DIGlobalVariableExpression(var: !1297, expr: !DIExpression())
!1297 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1298, isLocal: true, isDefinition: true)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, align: 8, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 50, lowerBound: 0)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1074, type: !103, isLocal: true, isDefinition: true)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1305, isLocal: true, isDefinition: true)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 312, align: 8, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 39, lowerBound: 0)
!1308 = !DIGlobalVariableExpression(var: !1309, expr: !DIExpression())
!1309 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1310, isLocal: true, isDefinition: true)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 360, align: 8, elements: !1311)
!1311 = !{!1312}
!1312 = !DISubrange(count: 45, lowerBound: 0)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression())
!1314 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1047, type: !118, isLocal: true, isDefinition: true)
!1315 = !DIGlobalVariableExpression(var: !1316, expr: !DIExpression())
!1316 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1062, type: !1148, isLocal: true, isDefinition: true)
!1317 = !DIGlobalVariableExpression(var: !1318, expr: !DIExpression())
!1318 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1398, type: !408, isLocal: true, isDefinition: true)
!1319 = !DIGlobalVariableExpression(var: !1320, expr: !DIExpression())
!1320 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1411, type: !1321, isLocal: true, isDefinition: true)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, align: 8, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 26, lowerBound: 0)
!1324 = !DIGlobalVariableExpression(var: !1325, expr: !DIExpression())
!1325 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1224, isLocal: true, isDefinition: true)
!1326 = !DIGlobalVariableExpression(var: !1327, expr: !DIExpression())
!1327 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1237, type: !382, isLocal: true, isDefinition: true)
!1328 = !DIGlobalVariableExpression(var: !1329, expr: !DIExpression())
!1329 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1237, type: !895, isLocal: true, isDefinition: true)
!1330 = !DIGlobalVariableExpression(var: !1331, expr: !DIExpression())
!1331 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1275, type: !103, isLocal: true, isDefinition: true)
!1332 = !DIGlobalVariableExpression(var: !1333, expr: !DIExpression())
!1333 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1334, isLocal: true, isDefinition: true)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 344, align: 8, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 43, lowerBound: 0)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1305, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1341, type: !438, isLocal: true, isDefinition: true)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression())
!1342 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1328, type: !468, isLocal: true, isDefinition: true)
!1343 = !DIGlobalVariableExpression(var: !1344, expr: !DIExpression())
!1344 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1294, type: !431, isLocal: true, isDefinition: true)
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression())
!1346 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1373, type: !67, isLocal: true, isDefinition: true)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression())
!1348 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1349, isLocal: true, isDefinition: true)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, align: 8, elements: !1350)
!1350 = !{!1351}
!1351 = !DISubrange(count: 47, lowerBound: 0)
!1352 = !DIGlobalVariableExpression(var: !1353, expr: !DIExpression())
!1353 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1987, type: !762, isLocal: true, isDefinition: true)
!1354 = !DIGlobalVariableExpression(var: !1355, expr: !DIExpression())
!1355 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1356, isLocal: true, isDefinition: true)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 440, align: 8, elements: !1357)
!1357 = !{!1358}
!1358 = !DISubrange(count: 55, lowerBound: 0)
!1359 = !DIGlobalVariableExpression(var: !1360, expr: !DIExpression())
!1360 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !155, isLocal: true, isDefinition: true)
!1361 = !DIGlobalVariableExpression(var: !1362, expr: !DIExpression())
!1362 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1352, type: !426, isLocal: true, isDefinition: true)
!1363 = !DIGlobalVariableExpression(var: !1364, expr: !DIExpression())
!1364 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1315, type: !103, isLocal: true, isDefinition: true)
!1365 = !DIGlobalVariableExpression(var: !1366, expr: !DIExpression())
!1366 = distinct !DIGlobalVariable(scope: null, file: !776, line: 734, type: !447, isLocal: true, isDefinition: true)
!1367 = !DIGlobalVariableExpression(var: !1368, expr: !DIExpression())
!1368 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1305, isLocal: true, isDefinition: true)
!1369 = !DIGlobalVariableExpression(var: !1370, expr: !DIExpression())
!1370 = distinct !DIGlobalVariable(scope: null, file: !776, line: 642, type: !198, isLocal: true, isDefinition: true)
!1371 = !DIGlobalVariableExpression(var: !1372, expr: !DIExpression())
!1372 = distinct !DIGlobalVariable(scope: null, file: !776, line: 642, type: !103, isLocal: true, isDefinition: true)
!1373 = !DIGlobalVariableExpression(var: !1374, expr: !DIExpression())
!1374 = distinct !DIGlobalVariable(scope: null, file: !776, line: 541, type: !377, isLocal: true, isDefinition: true)
!1375 = !DIGlobalVariableExpression(var: !1376, expr: !DIExpression())
!1376 = distinct !DIGlobalVariable(scope: null, file: !776, line: 273, type: !480, isLocal: true, isDefinition: true)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !382, isLocal: true, isDefinition: true)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !55, isLocal: true, isDefinition: true)
!1381 = !DIGlobalVariableExpression(var: !1382, expr: !DIExpression())
!1382 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1383, isLocal: true, isDefinition: true)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 368, align: 8, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 46, lowerBound: 0)
!1386 = !DIGlobalVariableExpression(var: !1387, expr: !DIExpression())
!1387 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1218, type: !468, isLocal: true, isDefinition: true)
!1388 = !DIGlobalVariableExpression(var: !1389, expr: !DIExpression())
!1389 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1390, isLocal: true, isDefinition: true)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, align: 8, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 48, lowerBound: 0)
!1393 = !DIGlobalVariableExpression(var: !1394, expr: !DIExpression())
!1394 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !895, isLocal: true, isDefinition: true)
!1395 = !DIGlobalVariableExpression(var: !1396, expr: !DIExpression())
!1396 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !895, isLocal: true, isDefinition: true)
!1397 = !DIGlobalVariableExpression(var: !1398, expr: !DIExpression())
!1398 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1239, isLocal: true, isDefinition: true)
!1399 = !DIGlobalVariableExpression(var: !1400, expr: !DIExpression())
!1400 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1239, isLocal: true, isDefinition: true)
!1401 = !DIGlobalVariableExpression(var: !1402, expr: !DIExpression())
!1402 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1403, isLocal: true, isDefinition: true)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 280, align: 8, elements: !922)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !776, file: !776, line: 1710, type: !9, isLocal: false, isDefinition: true, align: 64)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1716, type: !401, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1716, type: !401, isLocal: true, isDefinition: true)
!1410 = !DIGlobalVariableExpression(var: !1411, expr: !DIExpression())
!1411 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1791, type: !74, isLocal: true, isDefinition: true)
!1412 = !DIGlobalVariableExpression(var: !1413, expr: !DIExpression())
!1413 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1791, type: !128, isLocal: true, isDefinition: true)
!1414 = !DIGlobalVariableExpression(var: !1415, expr: !DIExpression())
!1415 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1793, type: !74, isLocal: true, isDefinition: true)
!1416 = !DIGlobalVariableExpression(var: !1417, expr: !DIExpression())
!1417 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1793, type: !377, isLocal: true, isDefinition: true)
!1418 = !DIGlobalVariableExpression(var: !1419, expr: !DIExpression())
!1419 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1793, type: !431, isLocal: true, isDefinition: true)
!1420 = !DIGlobalVariableExpression(var: !1421, expr: !DIExpression())
!1421 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1305, isLocal: true, isDefinition: true)
!1422 = !DIGlobalVariableExpression(var: !1423, expr: !DIExpression())
!1423 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1825, type: !1424, isLocal: true, isDefinition: true)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: 21, lowerBound: 0)
!1427 = !DIGlobalVariableExpression(var: !1428, expr: !DIExpression())
!1428 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1825, type: !198, isLocal: true, isDefinition: true)
!1429 = !DIGlobalVariableExpression(var: !1430, expr: !DIExpression())
!1430 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !173, isLocal: true, isDefinition: true)
!1431 = !DIGlobalVariableExpression(var: !1432, expr: !DIExpression())
!1432 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1879, type: !762, isLocal: true, isDefinition: true)
!1433 = !DIGlobalVariableExpression(var: !1434, expr: !DIExpression())
!1434 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1903, type: !431, isLocal: true, isDefinition: true)
!1435 = !DIGlobalVariableExpression(var: !1436, expr: !DIExpression())
!1436 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1277, isLocal: true, isDefinition: true)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1209, isLocal: true, isDefinition: true)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(scope: null, file: !776, line: 2125, type: !103, isLocal: true, isDefinition: true)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !1334, isLocal: true, isDefinition: true)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !776, line: 1, type: !895, isLocal: true, isDefinition: true)
!1445 = !DIGlobalVariableExpression(var: !1446, expr: !DIExpression())
!1446 = distinct !DIGlobalVariable(scope: null, file: !1447, line: 1, type: !1148, isLocal: true, isDefinition: true)
!1447 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1448 = !DIGlobalVariableExpression(var: !1449, expr: !DIExpression())
!1449 = distinct !DIGlobalVariable(scope: null, file: !1447, line: 1, type: !1112, isLocal: true, isDefinition: true)
!1450 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1451)
!1451 = !{!1452, !1455, !1457, !1459}
!1452 = !DIGlobalVariableExpression(var: !1453, expr: !DIExpression())
!1453 = distinct !DIGlobalVariable(scope: null, file: !1454, line: 1, type: !767, isLocal: true, isDefinition: true)
!1454 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1455 = !DIGlobalVariableExpression(var: !1456, expr: !DIExpression())
!1456 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1457 = !DIGlobalVariableExpression(var: !1458, expr: !DIExpression())
!1458 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1459 = !DIGlobalVariableExpression(var: !1460, expr: !DIExpression())
!1460 = distinct !DIGlobalVariable(scope: null, file: !1454, line: 1, type: !173, isLocal: true, isDefinition: true)
!1461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1462)
!1462 = !{!0, !50, !52, !1463, !1465, !1467, !1473, !1475, !1477, !58, !61, !1479, !65, !1481, !70, !1483, !1485, !1487, !1490, !72, !77, !83, !1492}
!1463 = !DIGlobalVariableExpression(var: !1464, expr: !DIExpression())
!1464 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1465 = !DIGlobalVariableExpression(var: !1466, expr: !DIExpression())
!1466 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1467 = !DIGlobalVariableExpression(var: !1468, expr: !DIExpression())
!1468 = distinct !DIGlobalVariable(scope: null, file: !1469, line: 1, type: !1470, isLocal: true, isDefinition: true)
!1469 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 496, align: 8, elements: !1471)
!1471 = !{!1472}
!1472 = !DISubrange(count: 62, lowerBound: 0)
!1473 = !DIGlobalVariableExpression(var: !1474, expr: !DIExpression())
!1474 = distinct !DIGlobalVariable(scope: null, file: !1469, line: 1, type: !1470, isLocal: true, isDefinition: true)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !767, isLocal: true, isDefinition: true)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !2, file: !2, line: 38, type: !21, isLocal: false, isDefinition: true, align: 64)
!1479 = !DIGlobalVariableExpression(var: !1480, expr: !DIExpression())
!1480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !108, isLocal: true, isDefinition: true)
!1481 = !DIGlobalVariableExpression(var: !1482, expr: !DIExpression())
!1482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !767, isLocal: true, isDefinition: true)
!1483 = !DIGlobalVariableExpression(var: !1484, expr: !DIExpression())
!1484 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !767, isLocal: true, isDefinition: true)
!1485 = !DIGlobalVariableExpression(var: !1486, expr: !DIExpression())
!1486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !377, isLocal: true, isDefinition: true)
!1487 = !DIGlobalVariableExpression(var: !1488, expr: !DIExpression())
!1488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !1489, isLocal: true, isDefinition: true)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 176, align: 8, elements: !976)
!1490 = !DIGlobalVariableExpression(var: !1491, expr: !DIExpression())
!1491 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !426, isLocal: true, isDefinition: true)
!1492 = !DIGlobalVariableExpression(var: !1493, expr: !DIExpression())
!1493 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !2, file: !2, line: 263, type: !63, isLocal: false, isDefinition: true, align: 32)
!1494 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1496)
!1496 = !{!1497, !1500, !1502, !1505, !1507, !1510, !1512, !1514, !1516, !1518, !1521, !1523, !1525, !1528, !1531, !1534, !1537, !1539, !1541, !1543, !1560, !1562, !1565, !1568, !100, !106, !111, !1570, !1572, !116, !1574, !121, !1576, !1578, !1580, !1582, !1584, !126, !1586, !1591, !1594, !1596, !1598, !1600, !1603, !1605, !1607, !1609, !1611, !1613, !1615, !1617, !1619, !1621, !1623, !1625, !1627, !1629, !131, !1631, !134, !1633, !137, !1639, !1641, !1643, !1645, !139, !141, !1647, !1649, !1651, !1653, !1655, !143, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !145, !1721, !1723, !1726, !1728}
!1497 = !DIGlobalVariableExpression(var: !1498, expr: !DIExpression())
!1498 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !1499, file: !1499, line: 32, type: !43, isLocal: false, isDefinition: true, align: 32)
!1499 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1500 = !DIGlobalVariableExpression(var: !1501, expr: !DIExpression())
!1501 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !1499, file: !1499, line: 52, type: !11, isLocal: false, isDefinition: true, align: 64)
!1502 = !DIGlobalVariableExpression(var: !1503, expr: !DIExpression())
!1503 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1504, file: !1504, line: 9, type: !522, isLocal: false, isDefinition: true, align: 64)
!1504 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1505 = !DIGlobalVariableExpression(var: !1506, expr: !DIExpression())
!1506 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !133, file: !133, line: 298, type: !21, isLocal: false, isDefinition: true, align: 64)
!1507 = !DIGlobalVariableExpression(var: !1508, expr: !DIExpression())
!1508 = distinct !DIGlobalVariable(scope: null, file: !1509, line: 210, type: !1489, isLocal: true, isDefinition: true)
!1509 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1510 = !DIGlobalVariableExpression(var: !1511, expr: !DIExpression())
!1511 = distinct !DIGlobalVariable(scope: null, file: !1509, line: 267, type: !1489, isLocal: true, isDefinition: true)
!1512 = !DIGlobalVariableExpression(var: !1513, expr: !DIExpression())
!1513 = distinct !DIGlobalVariable(scope: null, file: !1509, line: 348, type: !67, isLocal: true, isDefinition: true)
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(scope: null, file: !1509, line: 358, type: !118, isLocal: true, isDefinition: true)
!1516 = !DIGlobalVariableExpression(var: !1517, expr: !DIExpression())
!1517 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1509, file: !1509, line: 402, type: !63, isLocal: false, isDefinition: true, align: 32)
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(scope: null, file: !1520, line: 1, type: !108, isLocal: true, isDefinition: true)
!1520 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1521 = !DIGlobalVariableExpression(var: !1522, expr: !DIExpression())
!1522 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(scope: null, file: !1527, line: 13, type: !103, isLocal: true, isDefinition: true)
!1527 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1528 = !DIGlobalVariableExpression(var: !1529, expr: !DIExpression())
!1529 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1530, file: !1530, line: 142, type: !351, isLocal: false, isDefinition: true, align: 64)
!1530 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1533, file: !1533, line: 10, type: !365, isLocal: false, isDefinition: true, align: 64)
!1533 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1534 = !DIGlobalVariableExpression(var: !1535, expr: !DIExpression())
!1535 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !1536, file: !1536, line: 30, type: !45, isLocal: false, isDefinition: true, align: 8)
!1536 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1537 = !DIGlobalVariableExpression(var: !1538, expr: !DIExpression())
!1538 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !1536, file: !1536, line: 32, type: !63, isLocal: false, isDefinition: true, align: 32)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !1536, line: 61, type: !183, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(scope: null, file: !1536, line: 93, type: !74, isLocal: true, isDefinition: true)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !1536, file: !1536, line: 112, type: !1545, isLocal: false, isDefinition: true, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1546)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !21, size: 64, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !21, size: 64, align: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !21, size: 64, align: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !21, size: 64, align: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !21, size: 64, align: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !21, size: 64, align: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !21, size: 64, align: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !21, size: 64, align: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !21, size: 64, align: 64, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !21, size: 64, align: 64, offset: 704)
!1560 = !DIGlobalVariableExpression(var: !1561, expr: !DIExpression())
!1561 = distinct !DIGlobalVariable(scope: null, file: !1536, line: 135, type: !1277, isLocal: true, isDefinition: true)
!1562 = !DIGlobalVariableExpression(var: !1563, expr: !DIExpression())
!1563 = distinct !DIGlobalVariable(scope: null, file: !1564, line: 616, type: !895, isLocal: true, isDefinition: true)
!1564 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1565 = !DIGlobalVariableExpression(var: !1566, expr: !DIExpression())
!1566 = distinct !DIGlobalVariable(scope: null, file: !1567, line: 80, type: !895, isLocal: true, isDefinition: true)
!1567 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !1567, line: 89, type: !123, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(scope: null, file: !102, line: 103, type: !1489, isLocal: true, isDefinition: true)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !102, line: 122, type: !123, isLocal: true, isDefinition: true)
!1574 = !DIGlobalVariableExpression(var: !1575, expr: !DIExpression())
!1575 = distinct !DIGlobalVariable(scope: null, file: !102, line: 189, type: !55, isLocal: true, isDefinition: true)
!1576 = !DIGlobalVariableExpression(var: !1577, expr: !DIExpression())
!1577 = distinct !DIGlobalVariable(scope: null, file: !102, line: 199, type: !123, isLocal: true, isDefinition: true)
!1578 = !DIGlobalVariableExpression(var: !1579, expr: !DIExpression())
!1579 = distinct !DIGlobalVariable(scope: null, file: !102, line: 205, type: !108, isLocal: true, isDefinition: true)
!1580 = !DIGlobalVariableExpression(var: !1581, expr: !DIExpression())
!1581 = distinct !DIGlobalVariable(scope: null, file: !102, line: 212, type: !1224, isLocal: true, isDefinition: true)
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(scope: null, file: !102, line: 217, type: !1489, isLocal: true, isDefinition: true)
!1584 = !DIGlobalVariableExpression(var: !1585, expr: !DIExpression())
!1585 = distinct !DIGlobalVariable(scope: null, file: !102, line: 222, type: !128, isLocal: true, isDefinition: true)
!1586 = !DIGlobalVariableExpression(var: !1587, expr: !DIExpression())
!1587 = distinct !DIGlobalVariable(scope: null, file: !102, line: 231, type: !1588, isLocal: true, isDefinition: true)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 416, align: 8, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 52, lowerBound: 0)
!1591 = !DIGlobalVariableExpression(var: !1592, expr: !DIExpression())
!1592 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !895, isLocal: true, isDefinition: true)
!1593 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !1489, isLocal: true, isDefinition: true)
!1596 = !DIGlobalVariableExpression(var: !1597, expr: !DIExpression())
!1597 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !118, isLocal: true, isDefinition: true)
!1598 = !DIGlobalVariableExpression(var: !1599, expr: !DIExpression())
!1599 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !408, isLocal: true, isDefinition: true)
!1600 = !DIGlobalVariableExpression(var: !1601, expr: !DIExpression())
!1601 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 117, type: !205, isLocal: true, isDefinition: true)
!1602 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 120, type: !377, isLocal: true, isDefinition: true)
!1605 = !DIGlobalVariableExpression(var: !1606, expr: !DIExpression())
!1606 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 123, type: !377, isLocal: true, isDefinition: true)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 197, type: !205, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 200, type: !377, isLocal: true, isDefinition: true)
!1611 = !DIGlobalVariableExpression(var: !1612, expr: !DIExpression())
!1612 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 203, type: !377, isLocal: true, isDefinition: true)
!1613 = !DIGlobalVariableExpression(var: !1614, expr: !DIExpression())
!1614 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 272, type: !113, isLocal: true, isDefinition: true)
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 279, type: !113, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 355, type: !377, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 357, type: !205, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 373, type: !205, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 391, type: !377, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 393, type: !447, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !1530, line: 36, type: !480, isLocal: true, isDefinition: true)
!1629 = !DIGlobalVariableExpression(var: !1630, expr: !DIExpression())
!1630 = distinct !DIGlobalVariable(scope: null, file: !1530, line: 97, type: !55, isLocal: true, isDefinition: true)
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !133, file: !133, line: 105, type: !60, isLocal: false, isDefinition: true, align: 32)
!1633 = !DIGlobalVariableExpression(var: !1634, expr: !DIExpression())
!1634 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !133, file: !133, line: 107, type: !1635, isLocal: false, isDefinition: true, align: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1636)
!1636 = !{!1637, !369, !374}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64, dwarfAddressSpace: 0)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !133, line: 160, type: !210, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !133, line: 163, type: !431, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !133, line: 165, type: !431, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !133, line: 167, type: !103, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !133, file: !133, line: 299, type: !21, isLocal: false, isDefinition: true, align: 64)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !133, file: !133, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1651 = !DIGlobalVariableExpression(var: !1652, expr: !DIExpression())
!1652 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !133, file: !133, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1653 = !DIGlobalVariableExpression(var: !1654, expr: !DIExpression())
!1654 = distinct !DIGlobalVariable(scope: null, file: !133, line: 317, type: !1148, isLocal: true, isDefinition: true)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !133, file: !133, line: 345, type: !47, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !133, line: 365, type: !408, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !133, line: 382, type: !408, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !133, line: 392, type: !408, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !133, file: !133, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !40, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !967)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !8, !10, !12, !1675, !44, !46, !48, !49}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!20, !22, !24, !25, !1679, !27}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !9, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !133, line: 458, type: !1209, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !133, line: 514, type: !1148, isLocal: true, isDefinition: true)
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(name: "runtime.timerQueue", linkageName: "runtime.timerQueue", scope: !1687, file: !1687, line: 7, type: !1688, isLocal: false, isDefinition: true, align: 64)
!1687 = !DIFile(filename: "scheduler.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64, align: 64, dwarfAddressSpace: 0)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timerNode", baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !1691)
!1691 = !{!1692, !1693, !1704}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "next", baseType: !1688, size: 64, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "timer", baseType: !1694, size: 64, align: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64, align: 64, dwarfAddressSpace: 0)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timer", baseType: !1696)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1697)
!1697 = !{!1698, !1700, !1701, !1702}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "when", baseType: !1699, size: 64, align: 64)
!1699 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "period", baseType: !1699, size: 64, align: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !351, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !504)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !351, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !205, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !205, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !205, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !480, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !67, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !147, file: !147, line: 16, type: !63, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !147, file: !147, line: 17, type: !47, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !147, file: !147, line: 18, type: !32, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !147, file: !147, line: 151, type: !64, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !210, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !210, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !426, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !54, file: !54, line: 49, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !1739)
!1736 = !DISubroutineType(cc: DW_CC_nocall, types: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64, dwarfAddressSpace: 0)
!1739 = !{!1740, !1741}
!1740 = !DILocalVariable(name: "m", arg: 1, scope: !1735, file: !54, line: 49, type: !1738)
!1741 = !DILocalVariable(name: "old", scope: !1735, file: !54, line: 50, type: !43)
!1742 = !DILocation(line: 50, column: 12, scope: !1735)
!1743 = !DILocation(line: 50, column: 14, scope: !1735)
!1744 = !DILocalVariable(name: "x", arg: 1, scope: !1745, file: !1746, line: 153, type: !1749)
!1745 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1746, file: !1746, line: 153, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1750)
!1746 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1749, !43}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!1750 = !{!1744, !1751}
!1751 = !DILocalVariable(name: "new", arg: 2, scope: !1745, file: !1746, line: 153, type: !43)
!1752 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 50, column: 24, scope: !1735)
!1754 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !1753)
!1755 = !DILocalVariable(name: "addr", arg: 1, scope: !1756, file: !1757, line: 77, type: !1760)
!1756 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1757, file: !1757, line: 77, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1761)
!1757 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1760, !43}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!1761 = !{!1755, !1762}
!1762 = !DILocalVariable(name: "new", arg: 2, scope: !1756, file: !1757, line: 77, type: !43)
!1763 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !1753)
!1765 = !DILocation(line: 50, column: 29, scope: !1735)
!1766 = !DILocation(line: 0, scope: !1735)
!1767 = !DILocation(line: 52, column: 8, scope: !1735)
!1768 = !DILocation(line: 55, column: 3, scope: !1735)
!1769 = !DILocalVariable(name: "f", arg: 1, scope: !1770, file: !1771, line: 53, type: !1774)
!1770 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1771, file: !1771, line: 53, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1775)
!1771 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!1775 = !{!1769}
!1776 = !DILocation(line: 54, column: 46, scope: !1770, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 55, column: 15, scope: !1735)
!1778 = !DILocation(line: 54, column: 19, scope: !1770, inlinedAt: !1777)
!1779 = !DILocation(line: 57, column: 2, scope: !1735)
!1780 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!3}
!1783 = !{!1784, !1785, !1786, !1788}
!1784 = !DILocalVariable(name: "t", arg: 1, scope: !1780, file: !2, line: 125, type: !3)
!1785 = !DILocalVariable(name: "found", scope: !1780, file: !2, line: 133, type: !47)
!1786 = !DILocalVariable(name: "q", scope: !1780, file: !2, line: 134, type: !1787)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!1788 = !DILocalVariable(name: "otherGoroutines", scope: !1780, file: !2, line: 99, type: !43)
!1789 = !DILocation(line: 125, column: 6, scope: !1780)
!1790 = !DILocalVariable(name: "m", arg: 1, scope: !1791, file: !54, line: 31, type: !1738)
!1791 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !1793)
!1792 = !DISubroutineType(types: !1737)
!1793 = !{!1790}
!1794 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 132, column: 21, scope: !1780)
!1796 = !DILocalVariable(name: "x", arg: 1, scope: !1797, file: !1746, line: 156, type: !1749)
!1797 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1746, file: !1746, line: 156, type: !1798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1749, !43, !43}
!1800 = !{!1796, !1801, !1802}
!1801 = !DILocalVariable(name: "old", arg: 2, scope: !1797, file: !1746, line: 156, type: !43)
!1802 = !DILocalVariable(name: "new", arg: 3, scope: !1797, file: !1746, line: 156, type: !43)
!1803 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !1795)
!1805 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !1804)
!1806 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !1804)
!1807 = !DILocalVariable(name: "addr", arg: 1, scope: !1808, file: !1757, line: 99, type: !1760)
!1808 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1757, file: !1757, line: 99, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1760, !43, !43}
!1811 = !{!1807, !1812, !1813}
!1812 = !DILocalVariable(name: "old", arg: 2, scope: !1808, file: !1757, line: 99, type: !43)
!1813 = !DILocalVariable(name: "new", arg: 3, scope: !1808, file: !1757, line: 99, type: !43)
!1814 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !1804)
!1816 = !DILocation(line: 0, scope: !1791, inlinedAt: !1795)
!1817 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !1795)
!1818 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !1795)
!1820 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !1819)
!1821 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !1819)
!1823 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !1795)
!1824 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !1795)
!1825 = !DILocalVariable(name: "f", arg: 1, scope: !1826, file: !1771, line: 25, type: !1774)
!1826 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1771, file: !1771, line: 25, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1774, !43}
!1829 = !{!1825, !1830}
!1830 = !DILocalVariable(name: "cmp", arg: 2, scope: !1826, file: !1771, line: 25, type: !43)
!1831 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !1795)
!1833 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !1832)
!1834 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !1832)
!1835 = !DILocation(line: 133, column: 2, scope: !1780)
!1836 = !DILocation(line: 134, column: 6, scope: !1780)
!1837 = !DILocation(line: 134, column: 25, scope: !1780)
!1838 = !DILocation(line: 134, column: 28, scope: !1780)
!1839 = !DILocation(line: 0, scope: !1780)
!1840 = !DILocation(line: 134, column: 52, scope: !1780)
!1841 = !DILocation(line: 134, column: 26, scope: !1780)
!1842 = !DILocation(line: 135, column: 7, scope: !1780)
!1843 = !DILocation(line: 135, column: 12, scope: !1780)
!1844 = !DILocation(line: 135, column: 9, scope: !1780)
!1845 = !DILocation(line: 134, column: 36, scope: !1780)
!1846 = !DILocation(line: 136, column: 5, scope: !1780)
!1847 = !DILocation(line: 136, column: 9, scope: !1780)
!1848 = !DILocation(line: 136, column: 17, scope: !1780)
!1849 = !DILocation(line: 136, column: 4, scope: !1780)
!1850 = !DILocation(line: 137, column: 4, scope: !1780)
!1851 = !DILocation(line: 141, column: 2, scope: !1780)
!1852 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 142, column: 23, scope: !1780)
!1854 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !1853)
!1856 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !1855)
!1857 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !1855)
!1859 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !1853)
!1860 = !DILocation(line: 0, scope: !1735, inlinedAt: !1853)
!1861 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !1853)
!1862 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !1853)
!1863 = !DILocation(line: 54, column: 46, scope: !1770, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !1853)
!1865 = !DILocation(line: 54, column: 19, scope: !1770, inlinedAt: !1864)
!1866 = !DILocation(line: 145, column: 6, scope: !1780)
!1867 = !DILocation(line: 148, column: 2, scope: !1780)
!1868 = !DILocation(line: 142, column: 23, scope: !1780)
!1869 = !DILocation(line: 146, column: 15, scope: !1780)
!1870 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!60}
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "sig", arg: 1, scope: !1870, file: !2, line: 266, type: !60)
!1875 = !DILocalVariable(name: "stackBottom", scope: !1870, file: !2, line: 28, type: !21)
!1876 = !DILocation(line: 266, column: 6, scope: !1870)
!1877 = !DILocation(line: 62, column: 34, scope: !1878, inlinedAt: !1882)
!1878 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !1880)
!1879 = !DISubroutineType(types: !15)
!1880 = !{!1881}
!1881 = !DILocalVariable(name: "t", scope: !1878, file: !2, line: 62, type: !3)
!1882 = distinct !DILocation(line: 268, column: 9, scope: !1870)
!1883 = !DILocation(line: 63, column: 5, scope: !1878, inlinedAt: !1882)
!1884 = !DILocation(line: 63, column: 7, scope: !1878, inlinedAt: !1882)
!1885 = !DILocation(line: 0, scope: !1878, inlinedAt: !1882)
!1886 = !DILocation(line: 64, column: 15, scope: !1878, inlinedAt: !1882)
!1887 = !DILocation(line: 66, column: 9, scope: !1878, inlinedAt: !1882)
!1888 = !DILocation(line: 58, column: 6, scope: !1889, inlinedAt: !1890)
!1889 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1530, file: !1530, line: 58, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!1890 = distinct !DILocation(line: 268, column: 49, scope: !1870)
!1891 = !DILocation(line: 268, column: 39, scope: !1870)
!1892 = !DILocation(line: 268, column: 18, scope: !1870)
!1893 = !DILocalVariable(name: "wg", arg: 1, scope: !1894, file: !2, line: 163, type: !1897)
!1894 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !1898)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!1898 = !{!1893}
!1899 = !DILocation(line: 164, column: 5, scope: !1894, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 271, column: 20, scope: !1870)
!1901 = !DILocalVariable(name: "x", arg: 1, scope: !1902, file: !1746, line: 161, type: !1749)
!1902 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1746, file: !1746, line: 161, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1903)
!1903 = !{!1901, !1904}
!1904 = !DILocalVariable(name: "delta", arg: 2, scope: !1902, file: !1746, line: 161, type: !43)
!1905 = !DILocation(line: 161, column: 69, scope: !1902, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 164, column: 13, scope: !1894, inlinedAt: !1900)
!1907 = !DILocation(line: 161, column: 74, scope: !1902, inlinedAt: !1906)
!1908 = !DILocalVariable(name: "addr", arg: 1, scope: !1909, file: !1757, line: 123, type: !1760)
!1909 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1757, file: !1757, line: 123, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1910)
!1910 = !{!1908, !1911}
!1911 = !DILocalVariable(name: "delta", arg: 2, scope: !1909, file: !1757, line: 123, type: !43)
!1912 = !DILocation(line: 123, column: 6, scope: !1909, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 161, column: 67, scope: !1902, inlinedAt: !1906)
!1914 = !DILocation(line: 164, column: 26, scope: !1894, inlinedAt: !1900)
!1915 = !DILocation(line: 0, scope: !1894, inlinedAt: !1900)
!1916 = !DILocation(line: 165, column: 3, scope: !1894, inlinedAt: !1900)
!1917 = !DILocalVariable(name: "f", arg: 1, scope: !1918, file: !1771, line: 58, type: !1774)
!1918 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1771, file: !1771, line: 58, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !1919)
!1919 = !{!1917}
!1920 = !DILocation(line: 59, column: 50, scope: !1918, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 165, column: 15, scope: !1894, inlinedAt: !1900)
!1922 = !DILocation(line: 59, column: 23, scope: !1918, inlinedAt: !1921)
!1923 = !DILocalVariable(name: "x", arg: 1, scope: !1924, file: !1746, line: 147, type: !1749)
!1924 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1746, file: !1746, line: 147, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1749}
!1927 = !{!1923}
!1928 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 274, column: 18, scope: !1870)
!1930 = !DILocalVariable(name: "addr", arg: 1, scope: !1931, file: !1757, line: 183, type: !1760)
!1931 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1757, file: !1757, line: 183, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1760}
!1934 = !{!1930}
!1935 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !1929)
!1937 = !DILocation(line: 274, column: 21, scope: !1870)
!1938 = !DILocation(line: 0, scope: !1870)
!1939 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 275, column: 15, scope: !1870)
!1941 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !1940)
!1942 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !1940)
!1943 = !DILocation(line: 164, column: 5, scope: !1894, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 279, column: 20, scope: !1870)
!1945 = !DILocation(line: 161, column: 69, scope: !1902, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 164, column: 13, scope: !1894, inlinedAt: !1944)
!1947 = !DILocation(line: 161, column: 74, scope: !1902, inlinedAt: !1946)
!1948 = !DILocation(line: 123, column: 6, scope: !1909, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 161, column: 67, scope: !1902, inlinedAt: !1946)
!1950 = !DILocation(line: 164, column: 26, scope: !1894, inlinedAt: !1944)
!1951 = !DILocation(line: 0, scope: !1894, inlinedAt: !1944)
!1952 = !DILocation(line: 165, column: 3, scope: !1894, inlinedAt: !1944)
!1953 = !DILocation(line: 59, column: 50, scope: !1918, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 165, column: 15, scope: !1894, inlinedAt: !1944)
!1955 = !DILocation(line: 59, column: 23, scope: !1918, inlinedAt: !1954)
!1956 = !DILocation(line: 280, column: 2, scope: !1870)
!1957 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !102, file: !102, line: 85, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !1960)
!1958 = !DISubroutineType(cc: DW_CC_nocall, types: !1959)
!1959 = !{!365}
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "msg", arg: 1, scope: !1957, file: !102, line: 85, type: !365)
!1962 = !DILocation(line: 85, column: 6, scope: !1957)
!1963 = !DILocation(line: 88, column: 30, scope: !1957)
!1964 = !DILocation(line: 88, column: 35, scope: !1957)
!1965 = !DILocation(line: 88, column: 16, scope: !1957)
!1966 = !DILocation(line: 89, column: 2, scope: !1957)
!1967 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !102, file: !102, line: 91, type: !1968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !1970)
!1968 = !DISubroutineType(cc: DW_CC_nocall, types: !1969)
!1969 = !{!9, !365}
!1970 = !{!1971, !1972}
!1971 = !DILocalVariable(name: "addr", arg: 1, scope: !1967, file: !102, line: 91, type: !9)
!1972 = !DILocalVariable(name: "msg", arg: 2, scope: !1967, file: !102, line: 91, type: !365)
!1973 = !DILocation(line: 91, column: 6, scope: !1967)
!1974 = !DILocation(line: 99, column: 14, scope: !1967)
!1975 = !DILocation(line: 100, column: 20, scope: !1967)
!1976 = !DILocation(line: 100, column: 19, scope: !1967)
!1977 = !DILocation(line: 100, column: 26, scope: !1967)
!1978 = !DILocation(line: 100, column: 11, scope: !1967)
!1979 = !DILocation(line: 101, column: 14, scope: !1967)
!1980 = !DILocation(line: 105, column: 14, scope: !1967)
!1981 = !DILocation(line: 105, column: 13, scope: !1967)
!1982 = !DILocation(line: 106, column: 9, scope: !1967)
!1983 = !DILocation(line: 107, column: 7, scope: !1967)
!1984 = !DILocation(line: 108, column: 2, scope: !1967)
!1985 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1602, file: !1602, line: 12, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !1986)
!1986 = !{!1987, !1988}
!1987 = !DILocalVariable(name: "s", arg: 1, scope: !1985, file: !1602, line: 12, type: !365)
!1988 = !DILocalVariable(name: "i", scope: !1985, file: !1602, line: 13, type: !1989)
!1989 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!1990 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !1996)
!1991 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !133, file: !133, line: 214, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!165}
!1994 = !{!1995}
!1995 = !DILocalVariable(name: "c", arg: 1, scope: !1991, file: !133, line: 214, type: !165)
!1996 = distinct !DILocation(line: 14, column: 10, scope: !1985)
!1997 = !DILocation(line: 12, column: 6, scope: !1985)
!1998 = !DILocation(line: 13, column: 6, scope: !1985)
!1999 = !DILocation(line: 13, column: 22, scope: !1985)
!2000 = !DILocation(line: 0, scope: !1985)
!2001 = !DILocation(line: 14, column: 13, scope: !1985)
!2002 = !DILocation(line: 14, column: 11, scope: !1985)
!2003 = !DILocation(line: 14, column: 12, scope: !1985)
!2004 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !1996)
!2005 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !1996)
!2006 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !1996)
!2007 = !DILocation(line: 13, column: 26, scope: !1985)
!2008 = !DILocation(line: 13, column: 14, scope: !1985)
!2009 = !DILocation(line: 13, column: 16, scope: !1985)
!2010 = !DILocation(line: 16, column: 2, scope: !1985)
!2011 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1602, file: !1602, line: 371, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2014)
!2012 = !DISubroutineType(cc: DW_CC_nocall, types: !2013)
!2013 = !{!21}
!2014 = !{!2015, !2016, !2017}
!2015 = !DILocalVariable(name: "ptr", arg: 1, scope: !2011, file: !1602, line: 371, type: !21)
!2016 = !DILocalVariable(name: "i", scope: !2011, file: !1602, line: 378, type: !1989)
!2017 = !DILocalVariable(name: "nibble", scope: !2011, file: !1602, line: 379, type: !165)
!2018 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 383, column: 11, scope: !2011)
!2020 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 381, column: 11, scope: !2011)
!2022 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 377, column: 9, scope: !2011)
!2024 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 376, column: 9, scope: !2011)
!2026 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 373, column: 14, scope: !2011)
!2029 = !DILocation(line: 372, column: 5, scope: !2011)
!2030 = !DILocation(line: 372, column: 9, scope: !2011)
!2031 = !DILocation(line: 0, scope: !2011)
!2032 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2028)
!2033 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2028)
!2034 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2027)
!2035 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2027)
!2036 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2027)
!2037 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2028)
!2038 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2025)
!2039 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2025)
!2040 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2025)
!2041 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2023)
!2042 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2023)
!2043 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2023)
!2044 = !DILocation(line: 378, column: 6, scope: !2011)
!2045 = !DILocation(line: 378, column: 14, scope: !2011)
!2046 = !DILocation(line: 379, column: 18, scope: !2011)
!2047 = !DILocation(line: 379, column: 22, scope: !2011)
!2048 = !DILocation(line: 379, column: 17, scope: !2011)
!2049 = !DILocation(line: 380, column: 6, scope: !2011)
!2050 = !DILocation(line: 380, column: 13, scope: !2011)
!2051 = !DILocation(line: 381, column: 12, scope: !2011)
!2052 = !DILocation(line: 381, column: 19, scope: !2011)
!2053 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2021)
!2054 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2021)
!2055 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2021)
!2056 = !DILocation(line: 385, column: 3, scope: !2011)
!2057 = !DILocation(line: 378, column: 45, scope: !2011)
!2058 = !DILocation(line: 378, column: 16, scope: !2011)
!2059 = !DILocation(line: 383, column: 12, scope: !2011)
!2060 = !DILocation(line: 383, column: 24, scope: !2011)
!2061 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2019)
!2062 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2019)
!2063 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2019)
!2064 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1602, file: !1602, line: 286, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2065 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2066 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 290, column: 9, scope: !2064)
!2068 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2067)
!2069 = !DILocation(line: 214, column: 6, scope: !1991, inlinedAt: !2067)
!2070 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2067)
!2071 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2067)
!2072 = !DILocation(line: 291, column: 2, scope: !2064)
!2073 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !102, file: !102, line: 183, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2074 = !DILocation(line: 184, column: 30, scope: !2073)
!2075 = !DILocation(line: 184, column: 16, scope: !2073)
!2076 = !DILocation(line: 185, column: 2, scope: !2073)
!2077 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !102, file: !102, line: 193, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2078 = !DILocation(line: 194, column: 30, scope: !2077)
!2079 = !DILocation(line: 194, column: 16, scope: !2077)
!2080 = !DILocation(line: 195, column: 2, scope: !2077)
!2081 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !102, file: !102, line: 58, type: !2082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2085)
!2082 = !DISubroutineType(cc: DW_CC_nocall, types: !2083)
!2083 = !{!504, !2084}
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2085 = !{!2086, !2087, !2088, !2100, !2101}
!2086 = !DILocalVariable(name: "message", arg: 1, scope: !2081, file: !102, line: 58, type: !504)
!2087 = !DILocalVariable(name: "panicking", arg: 2, scope: !2081, file: !102, line: 58, type: !2084)
!2088 = !DILocalVariable(name: "frame", scope: !2081, file: !102, line: 65, type: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64, align: 64, dwarfAddressSpace: 0)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2097, !2098, !2099}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2096, align: 64, offset: 128)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !967)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2089, size: 64, align: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2084, size: 8, align: 8, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !504, size: 128, align: 64, offset: 256)
!2100 = !DILocalVariable(name: "PanicValue", scope: !2081, file: !102, line: 42, type: !504)
!2101 = !DILocalVariable(name: "Panicking", scope: !2081, file: !102, line: 41, type: !2084)
!2102 = !DILocation(line: 58, column: 6, scope: !2081)
!2103 = !DILocation(line: 62, column: 34, scope: !1878, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 65, column: 38, scope: !2081)
!2105 = !DILocation(line: 62, column: 2, scope: !1878, inlinedAt: !2104)
!2106 = !DILocation(line: 63, column: 5, scope: !1878, inlinedAt: !2104)
!2107 = !DILocation(line: 63, column: 7, scope: !1878, inlinedAt: !2104)
!2108 = !DILocation(line: 0, scope: !1878, inlinedAt: !2104)
!2109 = !DILocation(line: 64, column: 15, scope: !1878, inlinedAt: !2104)
!2110 = !DILocation(line: 66, column: 9, scope: !1878, inlinedAt: !2104)
!2111 = !DILocation(line: 65, column: 41, scope: !2081)
!2112 = !DILocation(line: 65, column: 3, scope: !2081)
!2113 = !DILocation(line: 66, column: 6, scope: !2081)
!2114 = !DILocation(line: 66, column: 12, scope: !2081)
!2115 = !DILocation(line: 0, scope: !2081)
!2116 = !DILocation(line: 67, column: 4, scope: !2081)
!2117 = !DILocation(line: 67, column: 23, scope: !2081)
!2118 = !DILocation(line: 67, column: 10, scope: !2081)
!2119 = !DILocation(line: 68, column: 4, scope: !2081)
!2120 = !DILocation(line: 68, column: 22, scope: !2081)
!2121 = !DILocation(line: 68, column: 10, scope: !2081)
!2122 = !DILocation(line: 69, column: 19, scope: !2081)
!2123 = !DILocation(line: 69, column: 18, scope: !2081)
!2124 = !DILocation(line: 73, column: 5, scope: !2081)
!2125 = !DILocation(line: 78, column: 13, scope: !2081)
!2126 = !DILocation(line: 79, column: 11, scope: !2081)
!2127 = !DILocation(line: 79, column: 10, scope: !2081)
!2128 = !DILocation(line: 80, column: 9, scope: !2081)
!2129 = !DILocation(line: 81, column: 7, scope: !2081)
!2130 = !DILocation(line: 82, column: 2, scope: !2081)
!2131 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1602, file: !1602, line: 293, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2134)
!2132 = !DISubroutineType(cc: DW_CC_nocall, types: !2133)
!2133 = !{!504}
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2141, !2142, !2143, !2145, !2146, !2147, !2148, !2149, !2150, !2152, !2153, !2155, !2157, !2158, !2159, !2161}
!2135 = !DILocalVariable(name: "msg", arg: 1, scope: !2131, file: !1602, line: 293, type: !504)
!2136 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !47)
!2137 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !1989)
!2138 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !91)
!2139 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !2140)
!2140 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2141 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !60)
!2142 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !1699)
!2143 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !2144)
!2144 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2145 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !45)
!2146 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !98)
!2147 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !43)
!2148 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !11)
!2149 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !21)
!2150 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !2151)
!2151 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2152 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !522)
!2153 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !2154)
!2154 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2155 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !2156)
!2156 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2157 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !365)
!2158 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !503)
!2159 = !DILocalVariable(name: "msg", scope: !2131, file: !1602, line: 294, type: !2160)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !504)
!2161 = !DILocalVariable(name: "itf", scope: !2131, file: !1602, line: 345, type: !504)
!2162 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 338, column: 14, scope: !2131)
!2165 = !DILocation(line: 293, column: 6, scope: !2131)
!2166 = !DILocation(line: 294, column: 16, scope: !2131)
!2167 = !DILocation(line: 338, column: 15, scope: !2131)
!2168 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2164)
!2169 = !DILocation(line: 13, column: 6, scope: !1985, inlinedAt: !2164)
!2170 = !DILocation(line: 13, column: 22, scope: !1985, inlinedAt: !2164)
!2171 = !DILocation(line: 0, scope: !1985, inlinedAt: !2164)
!2172 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2164)
!2173 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2164)
!2174 = !DILocation(line: 14, column: 12, scope: !1985, inlinedAt: !2164)
!2175 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2163)
!2176 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2163)
!2177 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2163)
!2178 = !DILocation(line: 13, column: 26, scope: !1985, inlinedAt: !2164)
!2179 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2164)
!2180 = !DILocation(line: 13, column: 16, scope: !1985, inlinedAt: !2164)
!2181 = !DILocation(line: 352, column: 2, scope: !2131)
!2182 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !102, file: !102, line: 54, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2183)
!2183 = !{!2184}
!2184 = !DILocalVariable(name: "message", arg: 1, scope: !2182, file: !102, line: 54, type: !504)
!2185 = !DILocation(line: 54, column: 6, scope: !2182)
!2186 = !DILocation(line: 55, column: 16, scope: !2182)
!2187 = !DILocation(line: 55, column: 15, scope: !2182)
!2188 = !DILocation(line: 56, column: 2, scope: !2182)
!2189 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1504, file: !1504, line: 60, type: !2190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!522, !522}
!2192 = !{!2193, !2194}
!2193 = !DILocalVariable(name: "x", arg: 1, scope: !2189, file: !1504, line: 60, type: !522)
!2194 = !DILocalVariable(name: "y", arg: 2, scope: !2189, file: !1504, line: 60, type: !522)
!2195 = !DILocation(line: 60, column: 6, scope: !2189)
!2196 = !DILocation(line: 61, column: 24, scope: !2189)
!2197 = !DILocation(line: 61, column: 27, scope: !2189)
!2198 = !DILocalVariable(name: "x", arg: 1, scope: !2199, file: !1504, line: 87, type: !522)
!2199 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1504, file: !1504, line: 87, type: !2190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2200)
!2200 = !{!2198, !2201}
!2201 = !DILocalVariable(name: "y", arg: 2, scope: !2199, file: !1504, line: 87, type: !522)
!2202 = !DILocation(line: 87, column: 6, scope: !2199, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 61, column: 23, scope: !2189)
!2204 = !DILocation(line: 88, column: 38, scope: !2199, inlinedAt: !2203)
!2205 = !DILocation(line: 88, column: 41, scope: !2199, inlinedAt: !2203)
!2206 = !DILocalVariable(name: "x", arg: 1, scope: !2207, file: !1504, line: 101, type: !522)
!2207 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1504, file: !1504, line: 101, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!522, !522, !1699, !1699}
!2210 = !{!2206, !2211, !2212, !2213, !2214, !2215}
!2211 = !DILocalVariable(name: "y", arg: 2, scope: !2207, file: !1504, line: 101, type: !522)
!2212 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2207, file: !1504, line: 101, type: !1699)
!2213 = !DILocalVariable(name: "magMask", arg: 4, scope: !2207, file: !1504, line: 101, type: !1699)
!2214 = !DILocalVariable(name: "xBits", scope: !2207, file: !1504, line: 102, type: !504)
!2215 = !DILocalVariable(name: "yBits", scope: !2207, file: !1504, line: 103, type: !504)
!2216 = !DILocation(line: 101, column: 6, scope: !2207, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 88, column: 37, scope: !2199, inlinedAt: !2203)
!2218 = !DILocation(line: 102, column: 11, scope: !2207, inlinedAt: !2217)
!2219 = !DILocation(line: 102, column: 2, scope: !2207, inlinedAt: !2217)
!2220 = !DILocation(line: 103, column: 11, scope: !2207, inlinedAt: !2217)
!2221 = !DILocation(line: 103, column: 2, scope: !2207, inlinedAt: !2217)
!2222 = !DILocation(line: 107, column: 7, scope: !2207, inlinedAt: !2217)
!2223 = !DILocation(line: 107, column: 16, scope: !2207, inlinedAt: !2217)
!2224 = !DILocation(line: 107, column: 13, scope: !2207, inlinedAt: !2217)
!2225 = !DILocation(line: 0, scope: !2207, inlinedAt: !2217)
!2226 = !DILocation(line: 109, column: 7, scope: !2207, inlinedAt: !2217)
!2227 = !DILocation(line: 109, column: 16, scope: !2207, inlinedAt: !2217)
!2228 = !DILocation(line: 109, column: 13, scope: !2207, inlinedAt: !2217)
!2229 = !DILocation(line: 118, column: 5, scope: !2207, inlinedAt: !2217)
!2230 = !DILocation(line: 118, column: 11, scope: !2207, inlinedAt: !2217)
!2231 = !DILocation(line: 121, column: 5, scope: !2207, inlinedAt: !2217)
!2232 = !DILocation(line: 121, column: 11, scope: !2207, inlinedAt: !2217)
!2233 = !DILocation(line: 124, column: 5, scope: !2207, inlinedAt: !2217)
!2234 = !DILocation(line: 124, column: 14, scope: !2207, inlinedAt: !2217)
!2235 = !DILocation(line: 124, column: 11, scope: !2207, inlinedAt: !2217)
!2236 = !DILocation(line: 61, column: 2, scope: !2189)
!2237 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1504, file: !1504, line: 65, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!2151, !2151}
!2240 = !{!2241, !2242}
!2241 = !DILocalVariable(name: "x", arg: 1, scope: !2237, file: !1504, line: 65, type: !2151)
!2242 = !DILocalVariable(name: "y", arg: 2, scope: !2237, file: !1504, line: 65, type: !2151)
!2243 = !DILocation(line: 65, column: 6, scope: !2237)
!2244 = !DILocation(line: 66, column: 24, scope: !2237)
!2245 = !DILocation(line: 66, column: 27, scope: !2237)
!2246 = !DILocalVariable(name: "x", arg: 1, scope: !2247, file: !1504, line: 83, type: !2151)
!2247 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1504, file: !1504, line: 83, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2248)
!2248 = !{!2246, !2249}
!2249 = !DILocalVariable(name: "y", arg: 2, scope: !2247, file: !1504, line: 83, type: !2151)
!2250 = !DILocation(line: 83, column: 6, scope: !2247, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 66, column: 23, scope: !2237)
!2252 = !DILocation(line: 84, column: 38, scope: !2247, inlinedAt: !2251)
!2253 = !DILocation(line: 84, column: 41, scope: !2247, inlinedAt: !2251)
!2254 = !DILocalVariable(name: "x", arg: 1, scope: !2255, file: !1504, line: 101, type: !2151)
!2255 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1504, file: !1504, line: 101, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!2151, !2151, !60, !60}
!2258 = !{!2254, !2259, !2260, !2261, !2262, !2263}
!2259 = !DILocalVariable(name: "y", arg: 2, scope: !2255, file: !1504, line: 101, type: !2151)
!2260 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2255, file: !1504, line: 101, type: !60)
!2261 = !DILocalVariable(name: "magMask", arg: 4, scope: !2255, file: !1504, line: 101, type: !60)
!2262 = !DILocalVariable(name: "xBits", scope: !2255, file: !1504, line: 102, type: !504)
!2263 = !DILocalVariable(name: "yBits", scope: !2255, file: !1504, line: 103, type: !504)
!2264 = !DILocation(line: 101, column: 6, scope: !2255, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 84, column: 37, scope: !2247, inlinedAt: !2251)
!2266 = !DILocation(line: 102, column: 11, scope: !2255, inlinedAt: !2265)
!2267 = !DILocation(line: 102, column: 2, scope: !2255, inlinedAt: !2265)
!2268 = !DILocation(line: 103, column: 11, scope: !2255, inlinedAt: !2265)
!2269 = !DILocation(line: 103, column: 2, scope: !2255, inlinedAt: !2265)
!2270 = !DILocation(line: 107, column: 7, scope: !2255, inlinedAt: !2265)
!2271 = !DILocation(line: 107, column: 16, scope: !2255, inlinedAt: !2265)
!2272 = !DILocation(line: 107, column: 13, scope: !2255, inlinedAt: !2265)
!2273 = !DILocation(line: 0, scope: !2255, inlinedAt: !2265)
!2274 = !DILocation(line: 109, column: 7, scope: !2255, inlinedAt: !2265)
!2275 = !DILocation(line: 109, column: 16, scope: !2255, inlinedAt: !2265)
!2276 = !DILocation(line: 109, column: 13, scope: !2255, inlinedAt: !2265)
!2277 = !DILocation(line: 118, column: 5, scope: !2255, inlinedAt: !2265)
!2278 = !DILocation(line: 118, column: 11, scope: !2255, inlinedAt: !2265)
!2279 = !DILocation(line: 121, column: 5, scope: !2255, inlinedAt: !2265)
!2280 = !DILocation(line: 121, column: 11, scope: !2255, inlinedAt: !2265)
!2281 = !DILocation(line: 124, column: 5, scope: !2255, inlinedAt: !2265)
!2282 = !DILocation(line: 124, column: 14, scope: !2255, inlinedAt: !2265)
!2283 = !DILocation(line: 124, column: 11, scope: !2255, inlinedAt: !2265)
!2284 = !DILocation(line: 66, column: 2, scope: !2237)
!2285 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1504, file: !1504, line: 70, type: !2190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2286)
!2286 = !{!2287, !2288}
!2287 = !DILocalVariable(name: "x", arg: 1, scope: !2285, file: !1504, line: 70, type: !522)
!2288 = !DILocalVariable(name: "y", arg: 2, scope: !2285, file: !1504, line: 70, type: !522)
!2289 = !DILocation(line: 70, column: 6, scope: !2285)
!2290 = !DILocation(line: 71, column: 24, scope: !2285)
!2291 = !DILocation(line: 71, column: 27, scope: !2285)
!2292 = !DILocalVariable(name: "x", arg: 1, scope: !2293, file: !1504, line: 95, type: !522)
!2293 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1504, file: !1504, line: 95, type: !2190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2294)
!2294 = !{!2292, !2295}
!2295 = !DILocalVariable(name: "y", arg: 2, scope: !2293, file: !1504, line: 95, type: !522)
!2296 = !DILocation(line: 95, column: 6, scope: !2293, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 71, column: 23, scope: !2285)
!2298 = !DILocation(line: 96, column: 38, scope: !2293, inlinedAt: !2297)
!2299 = !DILocation(line: 96, column: 41, scope: !2293, inlinedAt: !2297)
!2300 = !DILocalVariable(name: "x", arg: 1, scope: !2301, file: !1504, line: 133, type: !522)
!2301 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1504, file: !1504, line: 133, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2302)
!2302 = !{!2300, !2303, !2304, !2305, !2306, !2307, !2308}
!2303 = !DILocalVariable(name: "y", arg: 2, scope: !2301, file: !1504, line: 133, type: !522)
!2304 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2301, file: !1504, line: 133, type: !1699)
!2305 = !DILocalVariable(name: "magMask", arg: 4, scope: !2301, file: !1504, line: 133, type: !1699)
!2306 = !DILocalVariable(name: "xBits", scope: !2301, file: !1504, line: 134, type: !504)
!2307 = !DILocalVariable(name: "yBits", scope: !2301, file: !1504, line: 135, type: !504)
!2308 = !DILocalVariable(name: "maxNegNaN", scope: !2301, file: !1504, line: 149, type: !504)
!2309 = !DILocation(line: 133, column: 6, scope: !2301, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 96, column: 37, scope: !2293, inlinedAt: !2297)
!2311 = !DILocation(line: 134, column: 11, scope: !2301, inlinedAt: !2310)
!2312 = !DILocation(line: 134, column: 2, scope: !2301, inlinedAt: !2310)
!2313 = !DILocation(line: 135, column: 11, scope: !2301, inlinedAt: !2310)
!2314 = !DILocation(line: 135, column: 2, scope: !2301, inlinedAt: !2310)
!2315 = !DILocation(line: 142, column: 5, scope: !2301, inlinedAt: !2310)
!2316 = !DILocation(line: 142, column: 11, scope: !2301, inlinedAt: !2310)
!2317 = !DILocation(line: 0, scope: !2301, inlinedAt: !2310)
!2318 = !DILocation(line: 145, column: 5, scope: !2301, inlinedAt: !2310)
!2319 = !DILocation(line: 145, column: 11, scope: !2301, inlinedAt: !2310)
!2320 = !DILocation(line: 149, column: 16, scope: !2301, inlinedAt: !2310)
!2321 = !DILocation(line: 149, column: 2, scope: !2301, inlinedAt: !2310)
!2322 = !DILocation(line: 151, column: 7, scope: !2301, inlinedAt: !2310)
!2323 = !DILocation(line: 151, column: 16, scope: !2301, inlinedAt: !2310)
!2324 = !DILocation(line: 151, column: 13, scope: !2301, inlinedAt: !2310)
!2325 = !DILocation(line: 153, column: 7, scope: !2301, inlinedAt: !2310)
!2326 = !DILocation(line: 153, column: 16, scope: !2301, inlinedAt: !2310)
!2327 = !DILocation(line: 153, column: 13, scope: !2301, inlinedAt: !2310)
!2328 = !DILocation(line: 156, column: 5, scope: !2301, inlinedAt: !2310)
!2329 = !DILocation(line: 156, column: 14, scope: !2301, inlinedAt: !2310)
!2330 = !DILocation(line: 156, column: 11, scope: !2301, inlinedAt: !2310)
!2331 = !DILocation(line: 71, column: 2, scope: !2285)
!2332 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1504, file: !1504, line: 75, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2333)
!2333 = !{!2334, !2335}
!2334 = !DILocalVariable(name: "x", arg: 1, scope: !2332, file: !1504, line: 75, type: !2151)
!2335 = !DILocalVariable(name: "y", arg: 2, scope: !2332, file: !1504, line: 75, type: !2151)
!2336 = !DILocation(line: 75, column: 6, scope: !2332)
!2337 = !DILocation(line: 76, column: 24, scope: !2332)
!2338 = !DILocation(line: 76, column: 27, scope: !2332)
!2339 = !DILocalVariable(name: "x", arg: 1, scope: !2340, file: !1504, line: 91, type: !2151)
!2340 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1504, file: !1504, line: 91, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2341)
!2341 = !{!2339, !2342}
!2342 = !DILocalVariable(name: "y", arg: 2, scope: !2340, file: !1504, line: 91, type: !2151)
!2343 = !DILocation(line: 91, column: 6, scope: !2340, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 76, column: 23, scope: !2332)
!2345 = !DILocation(line: 92, column: 38, scope: !2340, inlinedAt: !2344)
!2346 = !DILocation(line: 92, column: 41, scope: !2340, inlinedAt: !2344)
!2347 = !DILocalVariable(name: "x", arg: 1, scope: !2348, file: !1504, line: 133, type: !2151)
!2348 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1504, file: !1504, line: 133, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2349)
!2349 = !{!2347, !2350, !2351, !2352, !2353, !2354, !2355}
!2350 = !DILocalVariable(name: "y", arg: 2, scope: !2348, file: !1504, line: 133, type: !2151)
!2351 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2348, file: !1504, line: 133, type: !60)
!2352 = !DILocalVariable(name: "magMask", arg: 4, scope: !2348, file: !1504, line: 133, type: !60)
!2353 = !DILocalVariable(name: "xBits", scope: !2348, file: !1504, line: 134, type: !504)
!2354 = !DILocalVariable(name: "yBits", scope: !2348, file: !1504, line: 135, type: !504)
!2355 = !DILocalVariable(name: "maxNegNaN", scope: !2348, file: !1504, line: 149, type: !504)
!2356 = !DILocation(line: 133, column: 6, scope: !2348, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 92, column: 37, scope: !2340, inlinedAt: !2344)
!2358 = !DILocation(line: 134, column: 11, scope: !2348, inlinedAt: !2357)
!2359 = !DILocation(line: 134, column: 2, scope: !2348, inlinedAt: !2357)
!2360 = !DILocation(line: 135, column: 11, scope: !2348, inlinedAt: !2357)
!2361 = !DILocation(line: 135, column: 2, scope: !2348, inlinedAt: !2357)
!2362 = !DILocation(line: 142, column: 5, scope: !2348, inlinedAt: !2357)
!2363 = !DILocation(line: 142, column: 11, scope: !2348, inlinedAt: !2357)
!2364 = !DILocation(line: 0, scope: !2348, inlinedAt: !2357)
!2365 = !DILocation(line: 145, column: 5, scope: !2348, inlinedAt: !2357)
!2366 = !DILocation(line: 145, column: 11, scope: !2348, inlinedAt: !2357)
!2367 = !DILocation(line: 149, column: 16, scope: !2348, inlinedAt: !2357)
!2368 = !DILocation(line: 149, column: 2, scope: !2348, inlinedAt: !2357)
!2369 = !DILocation(line: 151, column: 7, scope: !2348, inlinedAt: !2357)
!2370 = !DILocation(line: 151, column: 16, scope: !2348, inlinedAt: !2357)
!2371 = !DILocation(line: 151, column: 13, scope: !2348, inlinedAt: !2357)
!2372 = !DILocation(line: 153, column: 7, scope: !2348, inlinedAt: !2357)
!2373 = !DILocation(line: 153, column: 16, scope: !2348, inlinedAt: !2357)
!2374 = !DILocation(line: 153, column: 13, scope: !2348, inlinedAt: !2357)
!2375 = !DILocation(line: 156, column: 5, scope: !2348, inlinedAt: !2357)
!2376 = !DILocation(line: 156, column: 14, scope: !2348, inlinedAt: !2357)
!2377 = !DILocation(line: 156, column: 11, scope: !2348, inlinedAt: !2357)
!2378 = !DILocation(line: 76, column: 2, scope: !2332)
!2379 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !1536, file: !1536, line: 46, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2380 = !DILocation(line: 62, column: 34, scope: !1878, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 193, column: 20, scope: !2382, inlinedAt: !2390)
!2382 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389}
!2384 = !DILocalVariable(name: "current", scope: !2382, file: !2, line: 193, type: !3)
!2385 = !DILocalVariable(name: "otherGoroutines", scope: !2382, file: !2, line: 99, type: !43)
!2386 = !DILocalVariable(name: "scanWaitGroup", scope: !2382, file: !2, line: 151, type: !79)
!2387 = !DILocalVariable(name: "activeTasks", scope: !2382, file: !2, line: 45, type: !3)
!2388 = !DILocalVariable(name: "t", scope: !2382, file: !2, line: 212, type: !3)
!2389 = !DILocalVariable(name: "t", scope: !2382, file: !2, line: 223, type: !3)
!2390 = distinct !DILocation(line: 8, column: 25, scope: !2391, inlinedAt: !2393)
!2391 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2392, file: !2392, line: 7, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2392 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2393 = distinct !DILocation(line: 48, column: 17, scope: !2379)
!2394 = !DILocation(line: 63, column: 5, scope: !1878, inlinedAt: !2381)
!2395 = !DILocation(line: 63, column: 7, scope: !1878, inlinedAt: !2381)
!2396 = !DILocation(line: 0, scope: !1878, inlinedAt: !2381)
!2397 = !DILocation(line: 64, column: 15, scope: !1878, inlinedAt: !2381)
!2398 = !DILocation(line: 66, column: 9, scope: !1878, inlinedAt: !2381)
!2399 = !DILocation(line: 193, column: 2, scope: !2382, inlinedAt: !2390)
!2400 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 196, column: 17, scope: !2382, inlinedAt: !2390)
!2402 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !2401)
!2404 = !DILocation(line: 196, column: 20, scope: !2382, inlinedAt: !2390)
!2405 = !DILocation(line: 0, scope: !2382, inlinedAt: !2390)
!2406 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 199, column: 22, scope: !2382, inlinedAt: !2390)
!2408 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2407)
!2410 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2409)
!2411 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2409)
!2412 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2409)
!2414 = !DILocation(line: 0, scope: !1791, inlinedAt: !2407)
!2415 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2407)
!2416 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2407)
!2418 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2417)
!2419 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2417)
!2421 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2407)
!2422 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2407)
!2423 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2407)
!2425 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2424)
!2426 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2424)
!2427 = !DILocalVariable(name: "wg", arg: 1, scope: !2428, file: !2, line: 169, type: !1897)
!2428 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !2429)
!2429 = !{!2427, !2430}
!2430 = !DILocalVariable(name: "val", scope: !2428, file: !2, line: 171, type: !43)
!2431 = !DILocation(line: 169, column: 22, scope: !2428, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 202, column: 21, scope: !2382, inlinedAt: !2390)
!2433 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 171, column: 19, scope: !2428, inlinedAt: !2432)
!2435 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !2434)
!2437 = !DILocation(line: 172, column: 10, scope: !2428, inlinedAt: !2432)
!2438 = !DILocation(line: 0, scope: !2428, inlinedAt: !2432)
!2439 = !DILocation(line: 175, column: 3, scope: !2428, inlinedAt: !2432)
!2440 = !DILocation(line: 175, column: 13, scope: !2428, inlinedAt: !2432)
!2441 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 175, column: 12, scope: !2428, inlinedAt: !2432)
!2443 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2442)
!2444 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2442)
!2445 = !DILocation(line: 172, column: 6, scope: !2428, inlinedAt: !2432)
!2446 = !DILocalVariable(name: "x", arg: 1, scope: !2447, file: !1746, line: 150, type: !1749)
!2447 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1746, file: !1746, line: 150, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2448)
!2448 = !{!2446, !2449}
!2449 = !DILocalVariable(name: "val", arg: 2, scope: !2447, file: !1746, line: 150, type: !43)
!2450 = !DILocation(line: 150, column: 51, scope: !2447, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 206, column: 16, scope: !2382, inlinedAt: !2390)
!2452 = !DILocation(line: 150, column: 56, scope: !2447, inlinedAt: !2451)
!2453 = !DILocalVariable(name: "addr", arg: 1, scope: !2454, file: !1757, line: 205, type: !1760)
!2454 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1757, file: !1757, line: 205, type: !1758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2455)
!2455 = !{!2453, !2456}
!2456 = !DILocalVariable(name: "val", arg: 2, scope: !2454, file: !1757, line: 205, type: !43)
!2457 = !DILocation(line: 205, column: 6, scope: !2454, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 150, column: 49, scope: !2447, inlinedAt: !2451)
!2459 = !DILocation(line: 209, column: 33, scope: !2382, inlinedAt: !2390)
!2460 = !DILocation(line: 209, column: 3, scope: !2382, inlinedAt: !2390)
!2461 = !DILocation(line: 212, column: 12, scope: !2382, inlinedAt: !2390)
!2462 = !DILocation(line: 212, column: 7, scope: !2382, inlinedAt: !2390)
!2463 = !DILocation(line: 212, scope: !2382, inlinedAt: !2390)
!2464 = !DILocation(line: 212, column: 27, scope: !2382, inlinedAt: !2390)
!2465 = !DILocation(line: 213, column: 7, scope: !2382, inlinedAt: !2390)
!2466 = !DILocation(line: 213, column: 12, scope: !2382, inlinedAt: !2390)
!2467 = !DILocation(line: 213, column: 9, scope: !2382, inlinedAt: !2390)
!2468 = !DILocation(line: 214, column: 32, scope: !2382, inlinedAt: !2390)
!2469 = !DILocation(line: 214, column: 40, scope: !2382, inlinedAt: !2390)
!2470 = !DILocation(line: 214, column: 31, scope: !2382, inlinedAt: !2390)
!2471 = !DILocation(line: 212, column: 39, scope: !2382, inlinedAt: !2390)
!2472 = !DILocation(line: 212, column: 47, scope: !2382, inlinedAt: !2390)
!2473 = !DILocation(line: 212, column: 35, scope: !2382, inlinedAt: !2390)
!2474 = !DILocation(line: 212, column: 25, scope: !2382, inlinedAt: !2390)
!2475 = !DILocation(line: 169, column: 22, scope: !2428, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 219, column: 21, scope: !2382, inlinedAt: !2390)
!2477 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 171, column: 19, scope: !2428, inlinedAt: !2476)
!2479 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !2478)
!2481 = !DILocation(line: 172, column: 10, scope: !2428, inlinedAt: !2476)
!2482 = !DILocation(line: 0, scope: !2428, inlinedAt: !2476)
!2483 = !DILocation(line: 175, column: 3, scope: !2428, inlinedAt: !2476)
!2484 = !DILocation(line: 175, column: 13, scope: !2428, inlinedAt: !2476)
!2485 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 175, column: 12, scope: !2428, inlinedAt: !2476)
!2487 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2486)
!2488 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2486)
!2489 = !DILocation(line: 172, column: 6, scope: !2428, inlinedAt: !2476)
!2490 = !DILocation(line: 223, column: 11, scope: !2382, inlinedAt: !2390)
!2491 = !DILocation(line: 223, column: 6, scope: !2382, inlinedAt: !2390)
!2492 = !DILocation(line: 223, scope: !2382, inlinedAt: !2390)
!2493 = !DILocation(line: 223, column: 26, scope: !2382, inlinedAt: !2390)
!2494 = !DILocation(line: 224, column: 6, scope: !2382, inlinedAt: !2390)
!2495 = !DILocation(line: 224, column: 11, scope: !2382, inlinedAt: !2390)
!2496 = !DILocation(line: 224, column: 8, scope: !2382, inlinedAt: !2390)
!2497 = !DILocation(line: 225, column: 14, scope: !2382, inlinedAt: !2390)
!2498 = !DILocation(line: 225, column: 22, scope: !2382, inlinedAt: !2390)
!2499 = !DILocation(line: 225, column: 43, scope: !2382, inlinedAt: !2390)
!2500 = !DILocalVariable(name: "start", arg: 1, scope: !2501, file: !1536, line: 51, type: !21)
!2501 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !1536, file: !1536, line: 51, type: !2502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!21, !21}
!2504 = !{!2500, !2505}
!2505 = !DILocalVariable(name: "end", arg: 2, scope: !2501, file: !1536, line: 51, type: !21)
!2506 = !DILocation(line: 52, column: 17, scope: !2501, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 225, column: 13, scope: !2382, inlinedAt: !2390)
!2508 = !DILocation(line: 52, column: 24, scope: !2501, inlinedAt: !2507)
!2509 = !DILocation(line: 52, column: 16, scope: !2501, inlinedAt: !2507)
!2510 = !DILocation(line: 223, column: 38, scope: !2382, inlinedAt: !2390)
!2511 = !DILocation(line: 223, column: 46, scope: !2382, inlinedAt: !2390)
!2512 = !DILocation(line: 223, column: 34, scope: !2382, inlinedAt: !2390)
!2513 = !DILocation(line: 223, column: 24, scope: !2382, inlinedAt: !2390)
!2514 = !DILocation(line: 230, column: 18, scope: !2382, inlinedAt: !2390)
!2515 = !DILocalVariable(name: "found", arg: 1, scope: !2516, file: !2517, line: 95, type: !351)
!2516 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !2517, file: !2517, line: 95, type: !2518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2520)
!2517 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!351}
!2520 = !{!2515, !2521, !2522, !2523, !2536, !2537, !2538, !2545, !2546}
!2521 = !DILocalVariable(name: "headerPtr", scope: !2516, file: !2517, line: 103, type: !9)
!2522 = !DILocalVariable(name: "i", scope: !2516, file: !2517, line: 104, type: !1989)
!2523 = !DILocalVariable(name: "header", scope: !2516, file: !2517, line: 111, type: !2524)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64, align: 64, dwarfAddressSpace: 0)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !2526)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!2536 = !DILocalVariable(name: "start", scope: !2516, file: !2517, line: 113, type: !21)
!2537 = !DILocalVariable(name: "end", scope: !2516, file: !2517, line: 114, type: !21)
!2538 = !DILocalVariable(name: "header", scope: !2516, file: !2517, line: 118, type: !2539)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64, align: 64, dwarfAddressSpace: 0)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !2541)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !2542)
!2542 = !{!2528, !2530, !2531, !2532, !2533, !2534, !2543, !2544}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!2545 = !DILocalVariable(name: "start", scope: !2516, file: !2517, line: 120, type: !21)
!2546 = !DILocalVariable(name: "end", scope: !2516, file: !2517, line: 121, type: !21)
!2547 = !DILocation(line: 95, column: 6, scope: !2516, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 16, column: 13, scope: !2549, inlinedAt: !2550)
!2549 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2392, file: !2392, line: 15, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2550 = distinct !DILocation(line: 233, column: 15, scope: !2382, inlinedAt: !2390)
!2551 = !DILocation(line: 103, column: 2, scope: !2516, inlinedAt: !2548)
!2552 = !DILocation(line: 104, column: 6, scope: !2516, inlinedAt: !2548)
!2553 = !DILocation(line: 104, column: 33, scope: !2516, inlinedAt: !2548)
!2554 = !DILocation(line: 104, column: 16, scope: !2516, inlinedAt: !2548)
!2555 = !DILocation(line: 0, scope: !2516, inlinedAt: !2548)
!2556 = !DILocation(line: 103, column: 80, scope: !2516, inlinedAt: !2548)
!2557 = !DILocation(line: 103, column: 67, scope: !2516, inlinedAt: !2548)
!2558 = !DILocation(line: 103, column: 29, scope: !2516, inlinedAt: !2548)
!2559 = !DILocation(line: 112, column: 14, scope: !2516, inlinedAt: !2548)
!2560 = !DILocation(line: 104, column: 14, scope: !2516, inlinedAt: !2548)
!2561 = !DILocation(line: 111, column: 36, scope: !2516, inlinedAt: !2548)
!2562 = !DILocation(line: 112, column: 7, scope: !2516, inlinedAt: !2548)
!2563 = !DILocation(line: 112, column: 20, scope: !2516, inlinedAt: !2548)
!2564 = !DILocation(line: 112, column: 34, scope: !2516, inlinedAt: !2548)
!2565 = !DILocation(line: 112, column: 41, scope: !2516, inlinedAt: !2548)
!2566 = !DILocation(line: 112, column: 46, scope: !2516, inlinedAt: !2548)
!2567 = !DILocation(line: 112, column: 52, scope: !2516, inlinedAt: !2548)
!2568 = !DILocation(line: 113, column: 14, scope: !2516, inlinedAt: !2548)
!2569 = !DILocation(line: 113, column: 21, scope: !2516, inlinedAt: !2548)
!2570 = !DILocation(line: 115, column: 5, scope: !2516, inlinedAt: !2548)
!2571 = !DILocation(line: 115, column: 11, scope: !2516, inlinedAt: !2548)
!2572 = !DILocation(line: 115, column: 18, scope: !2516, inlinedAt: !2548)
!2573 = !DILocation(line: 114, column: 27, scope: !2516, inlinedAt: !2548)
!2574 = !DILocation(line: 114, column: 18, scope: !2516, inlinedAt: !2548)
!2575 = !DILocation(line: 52, column: 17, scope: !2501, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 115, column: 10, scope: !2516, inlinedAt: !2548)
!2577 = !DILocation(line: 52, column: 24, scope: !2501, inlinedAt: !2576)
!2578 = !DILocation(line: 52, column: 16, scope: !2501, inlinedAt: !2576)
!2579 = !DILocation(line: 125, column: 26, scope: !2516, inlinedAt: !2548)
!2580 = !DILocation(line: 125, column: 48, scope: !2516, inlinedAt: !2548)
!2581 = !DILocation(line: 125, column: 25, scope: !2516, inlinedAt: !2548)
!2582 = !DILocation(line: 125, column: 3, scope: !2516, inlinedAt: !2548)
!2583 = !DILocation(line: 104, column: 41, scope: !2516, inlinedAt: !2548)
!2584 = !DILocation(line: 104, column: 21, scope: !2516, inlinedAt: !2548)
!2585 = !DILocation(line: 49, column: 2, scope: !2379)
!2586 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2392, file: !2392, line: 23, type: !2587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2588)
!2587 = !DISubroutineType(types: !2013)
!2588 = !{!2589}
!2589 = !DILocalVariable(name: "sp", arg: 1, scope: !2586, file: !2392, line: 23, type: !21)
!2590 = !DILocation(line: 23, column: 6, scope: !2586)
!2591 = !DILocation(line: 24, column: 12, scope: !2586)
!2592 = !DILocation(line: 62, column: 34, scope: !1878, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 290, column: 16, scope: !2594, inlinedAt: !2595)
!2594 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461)
!2595 = distinct !DILocation(line: 24, column: 29, scope: !2586)
!2596 = !DILocation(line: 62, column: 2, scope: !1878, inlinedAt: !2593)
!2597 = !DILocation(line: 63, column: 5, scope: !1878, inlinedAt: !2593)
!2598 = !DILocation(line: 63, column: 7, scope: !1878, inlinedAt: !2593)
!2599 = !DILocation(line: 0, scope: !1878, inlinedAt: !2593)
!2600 = !DILocation(line: 64, column: 15, scope: !1878, inlinedAt: !2593)
!2601 = !DILocation(line: 66, column: 9, scope: !1878, inlinedAt: !2593)
!2602 = !DILocation(line: 290, column: 25, scope: !2594, inlinedAt: !2595)
!2603 = !DILocation(line: 51, column: 6, scope: !2501, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 24, column: 11, scope: !2586)
!2605 = !DILocation(line: 52, column: 17, scope: !2501, inlinedAt: !2604)
!2606 = !DILocation(line: 52, column: 24, scope: !2501, inlinedAt: !2604)
!2607 = !DILocation(line: 52, column: 16, scope: !2501, inlinedAt: !2604)
!2608 = !DILocation(line: 25, column: 2, scope: !2586)
!2609 = distinct !DISubprogram(name: "runtime.divideByZeroPanic", linkageName: "runtime.divideByZeroPanic", scope: !102, file: !102, line: 226, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2610 = !DILocation(line: 227, column: 30, scope: !2609)
!2611 = !DILocation(line: 227, column: 16, scope: !2609)
!2612 = !DILocation(line: 228, column: 2, scope: !2609)
!2613 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !133, file: !133, line: 80, type: !2614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!60, !136}
!2616 = !{!2617, !2618, !2619, !2620, !2621}
!2617 = !DILocalVariable(name: "argc", arg: 1, scope: !2613, file: !133, line: 80, type: !60)
!2618 = !DILocalVariable(name: "argv", arg: 2, scope: !2613, file: !133, line: 80, type: !136)
!2619 = !DILocalVariable(name: "main_argc", scope: !2613, file: !133, line: 105, type: !60)
!2620 = !DILocalVariable(name: "main_argv", scope: !2613, file: !133, line: 106, type: !136)
!2621 = !DILocalVariable(name: "stackTop", scope: !2613, file: !133, line: 75, type: !21)
!2622 = !DILocation(line: 80, column: 6, scope: !2613)
!2623 = !DILocation(line: 87, column: 14, scope: !2613)
!2624 = !DILocation(line: 87, column: 2, scope: !2613)
!2625 = !DILocation(line: 88, column: 14, scope: !2613)
!2626 = !DILocation(line: 88, column: 2, scope: !2613)
!2627 = !DILocation(line: 92, column: 31, scope: !2613)
!2628 = !DILocation(line: 58, column: 6, scope: !1889, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 27, column: 26, scope: !2630, inlinedAt: !2632)
!2630 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !2631, file: !2631, line: 26, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2631 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2632 = distinct !DILocation(line: 97, column: 35, scope: !2613)
!2633 = !DILocation(line: 27, column: 16, scope: !2630, inlinedAt: !2632)
!2634 = !DILocation(line: 97, column: 2, scope: !2613)
!2635 = !DILocation(line: 98, column: 9, scope: !2613)
!2636 = !DILocation(line: 101, column: 2, scope: !2613)
!2637 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !133, file: !133, line: 135, type: !2065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2638 = !DILocation(line: 137, column: 22, scope: !2639, inlinedAt: !2643)
!2639 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !2517, file: !2517, line: 137, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2640)
!2640 = !{!2641, !2642}
!2641 = !DILocalVariable(name: "read", scope: !2639, file: !2517, line: 138, type: !43)
!2642 = !DILocalVariable(name: "n", scope: !2639, file: !2517, line: 137, type: !11)
!2643 = distinct !DILocation(line: 27, column: 22, scope: !2644, inlinedAt: !2649)
!2644 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1499, file: !1499, line: 26, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2645)
!2645 = !{!2646, !2647, !2648}
!2646 = !DILocalVariable(name: "r", scope: !2644, file: !1499, line: 27, type: !11)
!2647 = !DILocalVariable(name: "xorshift64State", scope: !2644, file: !1499, line: 52, type: !11)
!2648 = !DILocalVariable(name: "xorshift32State", scope: !2644, file: !1499, line: 32, type: !43)
!2649 = distinct !DILocation(line: 24, column: 10, scope: !2650, inlinedAt: !2653)
!2650 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !147, file: !147, line: 23, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2651)
!2651 = !{!2652}
!2652 = !DILocalVariable(name: "stackTop", scope: !2650, file: !133, line: 75, type: !21)
!2653 = distinct !DILocation(line: 136, column: 5, scope: !2637)
!2654 = !DILocation(line: 138, column: 24, scope: !2639, inlinedAt: !2643)
!2655 = !DILocation(line: 138, column: 2, scope: !2639, inlinedAt: !2643)
!2656 = !DILocation(line: 139, column: 5, scope: !2639, inlinedAt: !2643)
!2657 = !DILocation(line: 0, scope: !2639, inlinedAt: !2643)
!2658 = !DILocation(line: 27, column: 2, scope: !2644, inlinedAt: !2649)
!2659 = !DILocation(line: 28, column: 27, scope: !2644, inlinedAt: !2649)
!2660 = !DILocation(line: 28, column: 2, scope: !2644, inlinedAt: !2649)
!2661 = !DILocation(line: 29, column: 27, scope: !2644, inlinedAt: !2649)
!2662 = !DILocation(line: 29, column: 2, scope: !2644, inlinedAt: !2649)
!2663 = !DILocation(line: 35, column: 12, scope: !2664, inlinedAt: !2665)
!2664 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !1536, file: !1536, line: 34, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2665 = distinct !DILocation(line: 25, column: 10, scope: !2650, inlinedAt: !2653)
!2666 = !DILocation(line: 39, column: 8, scope: !2664, inlinedAt: !2665)
!2667 = !DILocation(line: 26, column: 12, scope: !2650, inlinedAt: !2653)
!2668 = !DILocalVariable(name: "sp", arg: 1, scope: !2669, file: !2, line: 55, type: !21)
!2669 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !2587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1461, retainedNodes: !2670)
!2670 = !{!2668, !2671}
!2671 = !DILocalVariable(name: "stackTop", scope: !2669, file: !2, line: 24, type: !21)
!2672 = !DILocation(line: 55, column: 6, scope: !2669, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 26, column: 11, scope: !2650, inlinedAt: !2653)
!2674 = !DILocation(line: 56, column: 28, scope: !2669, inlinedAt: !2673)
!2675 = !DILocation(line: 56, column: 17, scope: !2669, inlinedAt: !2673)
!2676 = !DILocation(line: 57, column: 18, scope: !2669, inlinedAt: !2673)
!2677 = !DILocation(line: 28, column: 10, scope: !2650, inlinedAt: !2653)
!2678 = !DILocation(line: 137, column: 2, scope: !2637)
!2679 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !133, file: !133, line: 148, type: !2680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!60, !21}
!2682 = !{!2683, !2684}
!2683 = !DILocalVariable(name: "sig", arg: 1, scope: !2679, file: !133, line: 148, type: !60)
!2684 = !DILocalVariable(name: "addr", arg: 2, scope: !2679, file: !133, line: 148, type: !21)
!2685 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 158, column: 14, scope: !2679)
!2688 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 290, column: 9, scope: !2064, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 169, column: 10, scope: !2679)
!2691 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 90, column: 10, scope: !2693, inlinedAt: !2702)
!2693 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1602, file: !1602, line: 76, type: !2694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!11}
!2696 = !{!2697, !2698, !2699, !2700, !2701}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !1602, line: 76, type: !11)
!2698 = !DILocalVariable(name: "firstdigit", scope: !2693, file: !1602, line: 79, type: !1989)
!2699 = !DILocalVariable(name: "i", scope: !2693, file: !1602, line: 80, type: !1989)
!2700 = !DILocalVariable(name: "digit", scope: !2693, file: !1602, line: 81, type: !165)
!2701 = !DILocalVariable(name: "i", scope: !2693, file: !1602, line: 89, type: !1989)
!2702 = distinct !DILocation(line: 62, column: 13, scope: !2703, inlinedAt: !2708)
!2703 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1602, file: !1602, line: 61, type: !2704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!43}
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !1602, line: 61, type: !43)
!2708 = distinct !DILocation(line: 72, column: 13, scope: !2709, inlinedAt: !2712)
!2709 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1602, file: !1602, line: 65, type: !1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2710)
!2710 = !{!2711}
!2711 = !DILocalVariable(name: "n", arg: 1, scope: !2709, file: !1602, line: 65, type: !60)
!2712 = distinct !DILocation(line: 169, column: 10, scope: !2679)
!2713 = !DILocation(line: 76, column: 6, scope: !2693, inlinedAt: !2702)
!2714 = !DILocation(line: 77, column: 2, scope: !2693, inlinedAt: !2702)
!2715 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 69, column: 10, scope: !2709, inlinedAt: !2712)
!2717 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 290, column: 9, scope: !2064, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 167, column: 10, scope: !2679)
!2720 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 167, column: 10, scope: !2679)
!2723 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 290, column: 9, scope: !2064, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 165, column: 10, scope: !2679)
!2726 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 165, column: 10, scope: !2679)
!2729 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 290, column: 9, scope: !2064, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 163, column: 10, scope: !2679)
!2732 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 163, column: 10, scope: !2679)
!2735 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 160, column: 13, scope: !2679)
!2738 = !DILocation(line: 215, column: 2, scope: !1991, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 14, column: 10, scope: !1985, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 155, column: 14, scope: !2679)
!2741 = !DILocation(line: 148, column: 6, scope: !2679)
!2742 = !DILocation(line: 154, column: 5, scope: !2679)
!2743 = !DILocation(line: 154, column: 10, scope: !2679)
!2744 = !DILocation(line: 0, scope: !2679)
!2745 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2740)
!2746 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2740)
!2747 = !DILocation(line: 14, column: 12, scope: !1985, inlinedAt: !2740)
!2748 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2739)
!2749 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2739)
!2750 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2739)
!2751 = !DILocation(line: 13, column: 26, scope: !1985, inlinedAt: !2740)
!2752 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2740)
!2753 = !DILocation(line: 13, column: 16, scope: !1985, inlinedAt: !2740)
!2754 = !DILocation(line: 0, scope: !1985, inlinedAt: !2740)
!2755 = !DILocation(line: 156, column: 12, scope: !2679)
!2756 = !DILocation(line: 156, column: 11, scope: !2679)
!2757 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2737)
!2758 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2737)
!2759 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2737)
!2760 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2736)
!2761 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2736)
!2762 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2736)
!2763 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2737)
!2764 = !DILocation(line: 161, column: 9, scope: !2679)
!2765 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2766)
!2766 = !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2767)
!2767 = !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2768)
!2768 = !DILocation(line: 139, column: 16, scope: !2769, inlinedAt: !2744)
!2769 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !147, file: !147, line: 138, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2770 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 139, column: 16, scope: !2769, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 163, column: 10, scope: !2679)
!2773 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2771)
!2775 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2774)
!2776 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2774)
!2777 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2774)
!2779 = !DILocation(line: 0, scope: !1791, inlinedAt: !2771)
!2780 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2771)
!2781 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2771)
!2783 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2782)
!2784 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2782)
!2786 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2771)
!2787 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2771)
!2788 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2771)
!2790 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2789)
!2791 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2789)
!2792 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2734)
!2793 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2734)
!2794 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2734)
!2795 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2733)
!2796 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2733)
!2797 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2733)
!2798 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2734)
!2799 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2730)
!2800 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2730)
!2801 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2730)
!2802 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 143, column: 18, scope: !2804, inlinedAt: !2805)
!2804 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !147, file: !147, line: 142, type: !1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495)
!2805 = distinct !DILocation(line: 163, column: 10, scope: !2679)
!2806 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2803)
!2808 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2807)
!2809 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2807)
!2811 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2803)
!2812 = !DILocation(line: 0, scope: !1735, inlinedAt: !2803)
!2813 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2803)
!2814 = !DILocation(line: 54, column: 19, scope: !1770, inlinedAt: !2815)
!2815 = !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2816)
!2816 = !DILocation(line: 143, column: 18, scope: !2804, inlinedAt: !2744)
!2817 = !DILocation(line: 180, column: 7, scope: !2679)
!2818 = !DILocation(line: 180, column: 8, scope: !2679)
!2819 = !DILocation(line: 181, column: 2, scope: !2679)
!2820 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 139, column: 16, scope: !2769, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 165, column: 10, scope: !2679)
!2823 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2821)
!2825 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2824)
!2826 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2824)
!2827 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2824)
!2829 = !DILocation(line: 0, scope: !1791, inlinedAt: !2821)
!2830 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2821)
!2831 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2821)
!2833 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2832)
!2834 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2832)
!2836 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2821)
!2837 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2821)
!2838 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2821)
!2840 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2839)
!2841 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2839)
!2842 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2728)
!2843 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2728)
!2844 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2728)
!2845 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2727)
!2846 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2727)
!2847 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2727)
!2848 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2728)
!2849 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2724)
!2850 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2724)
!2851 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2724)
!2852 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 143, column: 18, scope: !2804, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 165, column: 10, scope: !2679)
!2855 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2853)
!2857 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2856)
!2858 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2856)
!2860 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2853)
!2861 = !DILocation(line: 0, scope: !1735, inlinedAt: !2853)
!2862 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2853)
!2863 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 139, column: 16, scope: !2769, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 167, column: 10, scope: !2679)
!2866 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2864)
!2868 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2867)
!2869 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2867)
!2870 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2867)
!2872 = !DILocation(line: 0, scope: !1791, inlinedAt: !2864)
!2873 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2864)
!2874 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2864)
!2876 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2875)
!2877 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2875)
!2879 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2864)
!2880 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2864)
!2881 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2864)
!2883 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2882)
!2884 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2882)
!2885 = !DILocation(line: 12, column: 6, scope: !1985, inlinedAt: !2722)
!2886 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2722)
!2887 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2722)
!2888 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2721)
!2889 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2721)
!2890 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2721)
!2891 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2722)
!2892 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2718)
!2893 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2718)
!2894 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2718)
!2895 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 143, column: 18, scope: !2804, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 167, column: 10, scope: !2679)
!2898 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2896)
!2900 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2899)
!2901 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2899)
!2903 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2896)
!2904 = !DILocation(line: 0, scope: !1735, inlinedAt: !2896)
!2905 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2896)
!2906 = !DILocation(line: 169, column: 11, scope: !2679)
!2907 = !DILocation(line: 33, column: 5, scope: !1791, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 139, column: 16, scope: !2769, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 169, column: 10, scope: !2679)
!2910 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 33, column: 27, scope: !1791, inlinedAt: !2908)
!2912 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !2911)
!2913 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !2911)
!2914 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !2911)
!2916 = !DILocation(line: 0, scope: !1791, inlinedAt: !2908)
!2917 = !DILocation(line: 43, column: 6, scope: !1791, inlinedAt: !2908)
!2918 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 43, column: 18, scope: !1791, inlinedAt: !2908)
!2920 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2919)
!2921 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2919)
!2923 = !DILocation(line: 43, column: 22, scope: !1791, inlinedAt: !2908)
!2924 = !DILocation(line: 45, column: 3, scope: !1791, inlinedAt: !2908)
!2925 = !DILocation(line: 26, column: 46, scope: !1826, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 45, column: 15, scope: !1791, inlinedAt: !2908)
!2927 = !DILocation(line: 26, column: 58, scope: !1826, inlinedAt: !2926)
!2928 = !DILocation(line: 26, column: 19, scope: !1826, inlinedAt: !2926)
!2929 = !DILocation(line: 68, column: 5, scope: !2709, inlinedAt: !2712)
!2930 = !DILocation(line: 68, column: 7, scope: !2709, inlinedAt: !2712)
!2931 = !DILocation(line: 0, scope: !2709, inlinedAt: !2712)
!2932 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2716)
!2933 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2716)
!2934 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2716)
!2935 = !DILocation(line: 70, column: 8, scope: !2709, inlinedAt: !2712)
!2936 = !DILocation(line: 70, column: 7, scope: !2709, inlinedAt: !2712)
!2937 = !DILocation(line: 70, column: 3, scope: !2709, inlinedAt: !2712)
!2938 = !DILocation(line: 65, column: 17, scope: !2709, inlinedAt: !2712)
!2939 = !DILocation(line: 72, column: 21, scope: !2709, inlinedAt: !2712)
!2940 = !DILocation(line: 62, column: 21, scope: !2703, inlinedAt: !2708)
!2941 = !DILocation(line: 62, column: 20, scope: !2703, inlinedAt: !2708)
!2942 = !DILocation(line: 79, column: 2, scope: !2693, inlinedAt: !2702)
!2943 = !DILocation(line: 80, column: 6, scope: !2693, inlinedAt: !2702)
!2944 = !DILocation(line: 0, scope: !2693, inlinedAt: !2702)
!2945 = !DILocation(line: 89, column: 23, scope: !2693, inlinedAt: !2702)
!2946 = !DILocation(line: 89, column: 25, scope: !2693, inlinedAt: !2702)
!2947 = !DILocation(line: 80, column: 15, scope: !2693, inlinedAt: !2702)
!2948 = !DILocation(line: 81, column: 17, scope: !2693, inlinedAt: !2702)
!2949 = !DILocation(line: 81, column: 18, scope: !2693, inlinedAt: !2702)
!2950 = !DILocation(line: 81, column: 16, scope: !2693, inlinedAt: !2702)
!2951 = !DILocation(line: 82, column: 15, scope: !2693, inlinedAt: !2702)
!2952 = !DILocation(line: 82, column: 9, scope: !2693, inlinedAt: !2702)
!2953 = !DILocation(line: 83, column: 12, scope: !2693, inlinedAt: !2702)
!2954 = !DILocation(line: 86, column: 3, scope: !2693, inlinedAt: !2702)
!2955 = !DILocation(line: 80, column: 23, scope: !2693, inlinedAt: !2702)
!2956 = !DILocation(line: 80, column: 17, scope: !2693, inlinedAt: !2702)
!2957 = !DILocation(line: 90, column: 18, scope: !2693, inlinedAt: !2702)
!2958 = !DILocation(line: 90, column: 17, scope: !2693, inlinedAt: !2702)
!2959 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2692)
!2960 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2692)
!2961 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2692)
!2962 = !DILocation(line: 89, column: 31, scope: !2693, inlinedAt: !2702)
!2963 = !DILocation(line: 92, column: 2, scope: !2693, inlinedAt: !2702)
!2964 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2689)
!2965 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2689)
!2966 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2689)
!2967 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 143, column: 18, scope: !2804, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 169, column: 10, scope: !2679)
!2970 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2968)
!2972 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !2971)
!2973 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !2971)
!2975 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2968)
!2976 = !DILocation(line: 0, scope: !1735, inlinedAt: !2968)
!2977 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2968)
!2978 = !DILocation(line: 14, column: 13, scope: !1985, inlinedAt: !2687)
!2979 = !DILocation(line: 14, column: 11, scope: !1985, inlinedAt: !2687)
!2980 = !DILocation(line: 14, column: 12, scope: !1985, inlinedAt: !2687)
!2981 = !DILocation(line: 215, column: 17, scope: !1991, inlinedAt: !2686)
!2982 = !DILocation(line: 216, column: 12, scope: !1991, inlinedAt: !2686)
!2983 = !DILocation(line: 217, column: 2, scope: !1991, inlinedAt: !2686)
!2984 = !DILocation(line: 13, column: 26, scope: !1985, inlinedAt: !2687)
!2985 = !DILocation(line: 13, column: 14, scope: !1985, inlinedAt: !2687)
!2986 = !DILocation(line: 13, column: 16, scope: !1985, inlinedAt: !2687)
!2987 = !DILocation(line: 0, scope: !1985, inlinedAt: !2687)
!2988 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !133, file: !133, line: 420, type: !1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1495, retainedNodes: !2989)
!2989 = !{!2990, !2991, !2992, !2993}
!2990 = !DILocalVariable(name: "s", arg: 1, scope: !2988, file: !133, line: 420, type: !60)
!2991 = !DILocalVariable(name: "mask", scope: !2988, file: !133, line: 427, type: !43)
!2992 = !DILocalVariable(name: "val", scope: !2988, file: !133, line: 428, type: !43)
!2993 = !DILocalVariable(name: "swapped", scope: !2988, file: !133, line: 429, type: !47)
!2994 = !DILocation(line: 420, column: 6, scope: !2988)
!2995 = !DILocation(line: 0, scope: !2988)
!2996 = !DILocation(line: 427, column: 31, scope: !2988)
!2997 = !DILocation(line: 427, column: 3, scope: !2988)
!2998 = !DILocation(line: 147, column: 18, scope: !1924, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 428, column: 30, scope: !2988)
!3000 = !DILocation(line: 147, column: 53, scope: !1924, inlinedAt: !2999)
!3001 = !DILocation(line: 183, column: 6, scope: !1931, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 147, column: 51, scope: !1924, inlinedAt: !2999)
!3003 = !DILocation(line: 428, column: 3, scope: !2988)
!3004 = !DILocation(line: 429, column: 45, scope: !2988)
!3005 = !DILocation(line: 429, column: 50, scope: !2988)
!3006 = !DILocation(line: 429, column: 54, scope: !2988)
!3007 = !DILocation(line: 429, column: 53, scope: !2988)
!3008 = !DILocation(line: 156, column: 18, scope: !1797, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 429, column: 44, scope: !2988)
!3010 = !DILocation(line: 157, column: 31, scope: !1797, inlinedAt: !3009)
!3011 = !DILocation(line: 157, column: 36, scope: !1797, inlinedAt: !3009)
!3012 = !DILocation(line: 157, column: 41, scope: !1797, inlinedAt: !3009)
!3013 = !DILocation(line: 99, column: 6, scope: !1808, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 157, column: 29, scope: !1797, inlinedAt: !3009)
!3015 = !DILocation(line: 429, column: 3, scope: !2988)
!3016 = !DILocation(line: 430, column: 6, scope: !2988)
!3017 = !DILocation(line: 153, column: 18, scope: !1745, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 437, column: 21, scope: !2988)
!3019 = !DILocation(line: 153, column: 69, scope: !1745, inlinedAt: !3018)
!3020 = !DILocation(line: 153, column: 74, scope: !1745, inlinedAt: !3018)
!3021 = !DILocation(line: 77, column: 6, scope: !1756, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 153, column: 67, scope: !1745, inlinedAt: !3018)
!3023 = !DILocation(line: 437, column: 25, scope: !2988)
!3024 = !DILocation(line: 58, column: 17, scope: !1918, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 441, column: 22, scope: !2988)
!3026 = !DILocation(line: 59, column: 50, scope: !1918, inlinedAt: !3025)
!3027 = !DILocation(line: 59, column: 23, scope: !1918, inlinedAt: !3025)
!3028 = !DILocation(line: 443, column: 2, scope: !2988)
!3029 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !3030, file: !3030, line: 4, type: !3031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3037)
!3030 = !DIFile(filename: "SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M")
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!3033, !1989, !1989}
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]int", size: 192, align: 64, elements: !3034)
!3034 = !{!3035, !369, !374}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !3036, size: 64, align: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64, align: 64, dwarfAddressSpace: 0)
!3037 = !{!3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045}
!3038 = !DILocalVariable(name: "A", arg: 1, scope: !3029, file: !3030, line: 4, type: !3033)
!3039 = !DILocalVariable(name: "N", arg: 2, scope: !3029, file: !3030, line: 4, type: !1989)
!3040 = !DILocalVariable(name: "M", arg: 3, scope: !3029, file: !3030, line: 4, type: !1989)
!3041 = !DILocalVariable(name: "sum", scope: !3029, file: !3030, line: 6, type: !1989)
!3042 = !DILocalVariable(name: "ans", scope: !3029, file: !3030, line: 7, type: !1989)
!3043 = !DILocalVariable(name: "i", scope: !3029, file: !3030, line: 9, type: !1989)
!3044 = !DILocalVariable(name: "j", scope: !3029, file: !3030, line: 10, type: !1989)
!3045 = !DILocalVariable(name: "k", scope: !3029, file: !3030, line: 11, type: !1989)
!3046 = !DILocation(line: 4, column: 6, scope: !3029)
!3047 = !DILocation(line: 6, column: 3, scope: !3029)
!3048 = !DILocation(line: 7, column: 3, scope: !3029)
!3049 = !DILocation(line: 9, column: 6, scope: !3029)
!3050 = !DILocation(line: 9, column: 21, scope: !3029)
!3051 = !DILocation(line: 0, scope: !3029)
!3052 = !DILocation(line: 9, column: 19, scope: !3029)
!3053 = !DILocation(line: 10, scope: !3029)
!3054 = !DILocation(line: 10, column: 26, scope: !3029)
!3055 = !DILocation(line: 10, column: 24, scope: !3029)
!3056 = !DILocation(line: 10, column: 28, scope: !3029)
!3057 = !DILocation(line: 11, column: 17, scope: !3029)
!3058 = !DILocation(line: 11, column: 19, scope: !3029)
!3059 = !DILocation(line: 11, column: 8, scope: !3029)
!3060 = !DILocation(line: 11, column: 29, scope: !3029)
!3061 = !DILocation(line: 11, column: 27, scope: !3029)
!3062 = !DILocation(line: 12, column: 12, scope: !3029)
!3063 = !DILocation(line: 12, column: 19, scope: !3029)
!3064 = !DILocation(line: 12, column: 13, scope: !3029)
!3065 = !DILocation(line: 12, column: 20, scope: !3029)
!3066 = !DILocation(line: 12, column: 25, scope: !3029)
!3067 = !DILocation(line: 12, column: 27, scope: !3029)
!3068 = !DILocation(line: 12, column: 26, scope: !3029)
!3069 = !DILocation(line: 13, column: 8, scope: !3029)
!3070 = !DILocation(line: 13, column: 12, scope: !3029)
!3071 = !DILocation(line: 13, column: 11, scope: !3029)
!3072 = !DILocation(line: 12, column: 16, scope: !3029)
!3073 = !DILocation(line: 12, column: 23, scope: !3029)
!3074 = !DILocation(line: 13, column: 14, scope: !3029)
!3075 = !DILocation(line: 11, column: 32, scope: !3029)
!3076 = !DILocation(line: 11, column: 25, scope: !3029)
!3077 = !DILocation(line: 9, column: 23, scope: !3029)
!3078 = !DILocation(line: 19, column: 9, scope: !3029)
!3079 = !DILocation(line: 19, column: 2, scope: !3029)
