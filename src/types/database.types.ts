export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export interface Database {
  graphql_public: {
    Tables: {
      [_ in never]: never
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      graphql: {
        Args: {
          operationName?: string
          query?: string
          variables?: Json
          extensions?: Json
        }
        Returns: Json
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
  public: {
    Tables: {
      ganres: {
        Row: {
          id: number
          slug: string
          title: string | null
        }
        Insert: {
          id?: number
          slug: string
          title?: string | null
        }
        Update: {
          id?: number
          slug?: string
          title?: string | null
        }
        Relationships: []
      }
      list_anime_top: {
        Row: {
          id: number
          list: number[] | null
        }
        Insert: {
          id?: number
          list?: number[] | null
        }
        Update: {
          id?: number
          list?: number[] | null
        }
        Relationships: []
      }
      list_movies_top: {
        Row: {
          id: number
          list: number[] | null
        }
        Insert: {
          id?: number
          list?: number[] | null
        }
        Update: {
          id?: number
          list?: number[] | null
        }
        Relationships: []
      }
      list_series_top: {
        Row: {
          id: number
          list: number[] | null
        }
        Insert: {
          id?: number
          list?: number[] | null
        }
        Update: {
          id?: number
          list?: number[] | null
        }
        Relationships: []
      }
      posts: {
        Row: {
          createdat: string | null
          id: number
          linkanime: boolean | null
          mediatype: string | null
          poster: string | null
          rating: number | null
          recommendation: string | null
          recommended: boolean | null
          review: string | null
          slug: string
          title: string | null
          tmdbid: number | null
          updatedat: string | null
          watchedat: string | null
          year: number | null
        }
        Insert: {
          createdat?: string | null
          id?: number
          linkanime?: boolean | null
          mediatype?: string | null
          poster?: string | null
          rating?: number | null
          recommendation?: string | null
          recommended?: boolean | null
          review?: string | null
          slug: string
          title?: string | null
          tmdbid?: number | null
          updatedat?: string | null
          watchedat?: string | null
          year?: number | null
        }
        Update: {
          createdat?: string | null
          id?: number
          linkanime?: boolean | null
          mediatype?: string | null
          poster?: string | null
          rating?: number | null
          recommendation?: string | null
          recommended?: boolean | null
          review?: string | null
          slug?: string
          title?: string | null
          tmdbid?: number | null
          updatedat?: string | null
          watchedat?: string | null
          year?: number | null
        }
        Relationships: []
      }
      posts_ganres: {
        Row: {
          ganre_id: number
          id: number
          post_id: number
        }
        Insert: {
          ganre_id: number
          id?: number
          post_id: number
        }
        Update: {
          ganre_id?: number
          id?: number
          post_id?: number
        }
        Relationships: [
          {
            foreignKeyName: "posts_ganres_ganre_id_fkey"
            columns: ["ganre_id"]
            referencedRelation: "ganres"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "posts_ganres_post_id_fkey"
            columns: ["post_id"]
            referencedRelation: "posts"
            referencedColumns: ["id"]
          }
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      list_anime_top: {
        Args: Record<PropertyKey, never>
        Returns: {
          id: number
          mediatype: string
          tmdbid: number
          poster: string
          title: string
          year: number
          slug: string
          linkanime: boolean
          rating: number
          recommendation: string
          review: string
          createdat: string
          updatedat: string
          watchedat: string
        }[]
      }
      list_anime_top_position: {
        Args: {
          id: number
        }
        Returns: number
      }
      list_movies_top: {
        Args: Record<PropertyKey, never>
        Returns: {
          id: number
          mediatype: string
          tmdbid: number
          poster: string
          title: string
          year: number
          slug: string
          linkanime: boolean
          rating: number
          recommendation: string
          review: string
          createdat: string
          updatedat: string
          watchedat: string
        }[]
      }
      list_series_top: {
        Args: Record<PropertyKey, never>
        Returns: {
          id: number
          mediatype: string
          tmdbid: number
          poster: string
          title: string
          year: number
          slug: string
          linkanime: boolean
          rating: number
          recommendation: string
          review: string
          createdat: string
          updatedat: string
          watchedat: string
        }[]
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
  storage: {
    Tables: {
      buckets: {
        Row: {
          allowed_mime_types: string[] | null
          avif_autodetection: boolean | null
          created_at: string | null
          file_size_limit: number | null
          id: string
          name: string
          owner: string | null
          public: boolean | null
          updated_at: string | null
        }
        Insert: {
          allowed_mime_types?: string[] | null
          avif_autodetection?: boolean | null
          created_at?: string | null
          file_size_limit?: number | null
          id: string
          name: string
          owner?: string | null
          public?: boolean | null
          updated_at?: string | null
        }
        Update: {
          allowed_mime_types?: string[] | null
          avif_autodetection?: boolean | null
          created_at?: string | null
          file_size_limit?: number | null
          id?: string
          name?: string
          owner?: string | null
          public?: boolean | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "buckets_owner_fkey"
            columns: ["owner"]
            referencedRelation: "users"
            referencedColumns: ["id"]
          }
        ]
      }
      migrations: {
        Row: {
          executed_at: string | null
          hash: string
          id: number
          name: string
        }
        Insert: {
          executed_at?: string | null
          hash: string
          id: number
          name: string
        }
        Update: {
          executed_at?: string | null
          hash?: string
          id?: number
          name?: string
        }
        Relationships: []
      }
      objects: {
        Row: {
          bucket_id: string | null
          created_at: string | null
          id: string
          last_accessed_at: string | null
          metadata: Json | null
          name: string | null
          owner: string | null
          path_tokens: string[] | null
          updated_at: string | null
          version: string | null
        }
        Insert: {
          bucket_id?: string | null
          created_at?: string | null
          id?: string
          last_accessed_at?: string | null
          metadata?: Json | null
          name?: string | null
          owner?: string | null
          path_tokens?: string[] | null
          updated_at?: string | null
          version?: string | null
        }
        Update: {
          bucket_id?: string | null
          created_at?: string | null
          id?: string
          last_accessed_at?: string | null
          metadata?: Json | null
          name?: string | null
          owner?: string | null
          path_tokens?: string[] | null
          updated_at?: string | null
          version?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "objects_bucketId_fkey"
            columns: ["bucket_id"]
            referencedRelation: "buckets"
            referencedColumns: ["id"]
          }
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      can_insert_object: {
        Args: {
          bucketid: string
          name: string
          owner: string
          metadata: Json
        }
        Returns: undefined
      }
      extension: {
        Args: {
          name: string
        }
        Returns: string
      }
      filename: {
        Args: {
          name: string
        }
        Returns: string
      }
      foldername: {
        Args: {
          name: string
        }
        Returns: unknown
      }
      get_size_by_bucket: {
        Args: Record<PropertyKey, never>
        Returns: {
          size: number
          bucket_id: string
        }[]
      }
      search: {
        Args: {
          prefix: string
          bucketname: string
          limits?: number
          levels?: number
          offsets?: number
          search?: string
          sortcolumn?: string
          sortorder?: string
        }
        Returns: {
          name: string
          id: string
          updated_at: string
          created_at: string
          last_accessed_at: string
          metadata: Json
        }[]
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

