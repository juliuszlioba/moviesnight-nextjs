import { ExclamationCircleIcon } from "@heroicons/react/24/outline";

export default function Error({ message }: { message: string }) {
  return (
    <div className="flex justify-center gap-2 p-2">
      <ExclamationCircleIcon className="h-6 w-6" width="24" height="24" />
      <div>
        <p>{message}</p>
      </div>
    </div>
  );
}
